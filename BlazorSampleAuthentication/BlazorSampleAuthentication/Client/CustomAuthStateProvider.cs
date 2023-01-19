using System;
using System.Security.Claims;
using System.Text.Json;
using System.Net.Http.Headers;

namespace BlazorSampleAuthentication.Client
{
    public class CustomAuthStateProvider : AuthenticationStateProvider
    {

        private readonly ILocalStorageService _localStorage;
        private readonly HttpClient _http;

        public CustomAuthStateProvider(ILocalStorageService localStorageService, HttpClient http)
        {
            _localStorage = localStorageService;
            this._http = http;
        }

        public override async Task<AuthenticationState> GetAuthenticationStateAsync()
        {
            string token = await _localStorage.GetItemAsStringAsync("token");


            // If this is empty, it means user is not authorized.
            // The default will be empty
            var identity = new ClaimsIdentity();
            _http.DefaultRequestHeaders.Authorization = null;

            // If the client has token, he/she is authorized.
            if (!string.IsNullOrEmpty(token))
            {
                // Authorized will look like this
                identity = new ClaimsIdentity(ParseClaimsFromJwt(token), "jwt");
                _http.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token.Replace("\"", ""));
            }

            var user = new ClaimsPrincipal(identity);
            var state = new AuthenticationState(user);

            NotifyAuthenticationStateChanged(Task.FromResult(state));

            // Return the state.
            return state;
        }

        // Utility method
        // Copy from: https://github.com/patrickgod/BlazorAuthenticationTutorial/blob/master/BlazorAuthenticationTutorial/Client/CustomAuthStateProvider.cs
        private static IEnumerable<Claim> ParseClaimsFromJwt(string jwt)
        {
            var payload = jwt.Split('.')[1];
            var jsonBytes = ParseBase64WithoutPadding(payload);
            var keyValuePairs = JsonSerializer.Deserialize<Dictionary<string, object>>(jsonBytes);
            return keyValuePairs.Select(kvp => new Claim(kvp.Key, kvp.Value.ToString()));
        }


        // Utility method
        private static byte[] ParseBase64WithoutPadding(string base64)
        {
            switch (base64.Length % 4)
            {
                case 2: base64 += "=="; break;
                case 3: base64 += "="; break;
            }
            return Convert.FromBase64String(base64);
        }
    }
}


