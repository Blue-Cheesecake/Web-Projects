using BlazorSampleAuthentication.Shared;
using Microsoft.AspNetCore.Mvc;
using QRCoder;
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;


// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BlazorSampleAuthentication.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class GeneratingQRCodeController : ControllerBase
    {

        [HttpPost]
        public async Task<IActionResult> CreateQRCode(QRCodeModel qRCode)
        {
            try
            {
                QRCodeGenerator QRGen = new QRCodeGenerator();
                QRCodeData Qrinfo = QRGen.CreateQrCode(qRCode.QRCodeText, QRCodeGenerator.ECCLevel.Q);
                BitmapByteQRCode Qrcode = new BitmapByteQRCode(Qrinfo);
                byte[] BitmapArray = Qrcode.GetGraphic(60);
                string QrUri = string.Format("data:image/png;base64,{0}", Convert.ToBase64String(BitmapArray));
                return Ok(QrUri);
            }
            catch (Exception ex)
            {
                return BadRequest("Can't generate QRCode");
            }
        }

    }
}

