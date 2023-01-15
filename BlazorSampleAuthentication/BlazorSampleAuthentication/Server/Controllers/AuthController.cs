using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Threading.Tasks;
using System.IdentityModel.Tokens.Jwt;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BlazorSampleAuthentication.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthController : ControllerBase
    {
        public static User User { get; set; } = new User();
        private readonly IConfiguration _configuration;

        public AuthController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpPost("register")]
        public async Task<ActionResult<User>> Register(UserDto request)
        {
            CreatePasswordHash(request.Password, out byte[] passwordHash, out byte[] passwordSalt);
            User.PasswordHash = passwordHash;
            User.PasswordSalt = passwordSalt;

            User.Username = request.Username;

            // Add new User to Database
            //
            //


            return Ok(User);
        }

        /// <summary>
        /// Return JWT as a String
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        [HttpPost("login")]
        public async Task<ActionResult<string>> Login(UserDto request)
        {
            // Check if the username is in db. Search of them.

            // If the username is not found
            if (User.Username != request.Username)
            {
                return BadRequest("Sorry, there's no user here");
            }

            // Verify the password
            if (!VerifyPasswordHash(request.Password, User.PasswordHash, User.PasswordSalt))
            {
                return BadRequest("Wrong password");
            }

            string token = CreateToken(User);
            return Ok(token);
        }

        // Utility Method
        private static void CreatePasswordHash(string password, out byte[] passwordHash, out byte[] passwordSalt)
        {
            using (var hmac = new HMACSHA512())
            {
                passwordSalt = hmac.Key;
                passwordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
            }
        }

        // Utility Method
        private static bool VerifyPasswordHash(string password, byte[] passwordHash, byte[] passwordSalt)
        {
            using (var hmac = new HMACSHA512(passwordSalt))
            {
                var computeHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return computeHash.SequenceEqual(passwordHash);
            }
        }

        // Utility Method. Generating JWT
        private string CreateToken(User user)
        {
            // Create Claims
            List<Claim> claims = new List<Claim> {
                new Claim(ClaimTypes.Name, User.Username),
            };

            // Create Key
            var key = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(_configuration.GetSection("AppSettings:Token").Value));

            // Signing credentials
            var cred = new SigningCredentials(key, SecurityAlgorithms.HmacSha512Signature);

            // Create token
            var token = new JwtSecurityToken(
                claims: claims,
                expires: DateTime.Now.AddDays(1),
                signingCredentials: cred
            );

            //
            string jwt = new JwtSecurityTokenHandler().WriteToken(token);

            return jwt;
        }
    }
}

