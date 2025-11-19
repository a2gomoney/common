<%@ WebHandler Language="C#" Class="upload_handler" %>

using System;
using System.Web;

using com.dext5;
using Com.Dext5.Util;

public class upload_handler : IHttpHandler
{
    private string _allowFileExt = "gif, jpg, jpeg, png, bmp, wmv, asf, swf, avi, mpg, mpeg, mp4, txt, doc, docx, xls, xlsx, ppt, pptx, hwp, zip, pdf, flv, webm, ogv";

    public void ProcessRequest (HttpContext context)
    {
        DEXT5Handler DEXT5 = new DEXT5Handler();

        ///////////////////////////////
        //    이벤트를 등록 처리     //
        ///////////////////////////////
        // 업로드 전 이벤트 처리기 등록
        //DEXT5.BeforeUploadEvent += new BeforeUploadEventDelegate(BeforeUploadEvent);

        // 환경설정파일 물리적 폴더 (서버 환경변수를 사용할 경우)
        //DEXT5.SetConfigPhysicalPath = @"C:\dext5\config";

        DEXT5.JpegQuality = 100; // JPG 품질 (1 ~ 100)
        // (저품질, 용량 축소) 1 ~ 100 (고품질, 용량 증가)

        // ***************보안 설정 : 업로드 가능한 경로 설정 - 이외의 경로로 업로드 불가능***************
        string[] allowUploadDirectoryPath = { context.Request.MapPath("/") };
        DEXT5.SetAllowUploadDirectoryPath = allowUploadDirectoryPath;

        //***************보안 설정 : Parameter 암호화 필수 검증 설정***************
        //Client Encrypt Parameter 설정값과 일치하게 설정, 설정하지 않을 경우 Parameter 암호화 필수 검증 진행하지 않음
        DEXT5.SetEncryptParameter = "3";

        string rtn_message = DEXT5.DEXTProcess(context, _allowFileExt);

        if (DEXT5.IsImageUpload == true)
        {
            /*
			// 동일 폴더에 이미지 썸네일 생성하기
			string strSourceFile = DEXT5.LastSaveFile;
			int rtn_value = DEXT5.ImageThumbnail(strSourceFile, "_thumb", 600, 0);
			if (rtn_value != 0)
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/

            /*
            // 동일 폴더에 이미지 썸네일 생성하기 (변경된 파일경로 리턴)
            string strSourceFile = DEXT5.LastSaveFile;
            string strChangedFile = DEXT5.ImageThumbnailEx(strSourceFile, "_thumb", 600, 0);
            if (strChangedFile == "")
            {
                string strLastError = DEXT5.LastErrorMessage;
            }
            */

            /*
            // 썸네일 파일 생성
            string strSourceFile = DEXT5.LastSaveFile;
            string strNewFileName = strSourceFile.Replace("\\image\\", "\\thumbnail\\");
            int rtn_value = DEXT5.GetImageThumbOrNewEx(strSourceFile, strNewFileName, 200, 0, 0);
            if (rtn_value != 0)
            {
                string strLastError = DEXT5.LastErrorMessage;
            }
            */

            /*
			// 이미지 포멧 변경
			string strSourceFile = DEXT5.LastSaveFile;
			int rtn_value = DEXT5.ImageConvertFormat(strSourceFile, "png", 0);
			if (rtn_value != 0)
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/

            /*
            // 이미지 포멧 변경 (변경된 파일경로 리턴)
            string strSourceFile = DEXT5.LastSaveFile;
            string strChangedFile = DEXT5.ImageConvertFormatEx(strSourceFile, "png", 0);
            if (strChangedFile == "")
            {
                string strLastError = DEXT5.LastErrorMessage;
            }
            */

            /*
            // 이미지 크기 변환
            string strSourceFile = DEXT5.LastSaveFile;
            int rtn_value = DEXT5.ImageConvertSize(strSourceFile, 500, 30);
            if (rtn_value != 0)
            {
                string strLastError = DEXT5.LastErrorMessage;
            }
            */

            /*
			// 비율로 이미지 크기 변환
			string strSourceFile = DEXT5.LastSaveFile;
			int rtn_value = DEXT5.ImageConvertSizeByPercent(strSourceFile, 50);
			if (rtn_value != 0)
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/

            /*
			// 이미지 회전
			string strSourceFile = DEXT5.LastSaveFile;
			int rtn_value = DEXT5.ImageRotate(strSourceFile, 90);
			if (rtn_value != 0)
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/

            /*
			// 이미지 워터마크
			string strSourceFile = DEXT5.LastSaveFile;
			string strWaterMarkFile = @"C:\Temp\watermark.jpg";
			int rtn_value = DEXT5.ImageWaterMark(strSourceFile, strWaterMarkFile, "TOP", 10, "RIGHT", 10, 0);
			if (rtn_value != 0)
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/

            /*
			// 텍스트 워터마크
			string strSourceFile = DEXT5.LastSaveFile;
			DEXT5.SetFontInfo("굴림", 50, "FF00FF");
			int rtn_value = DEXT5.TextWaterMark(strSourceFile, "DEXT5", "TOP", 10, "CENTER", 10, 0, 45);
			if (rtn_value != 0)
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/

            /*
            // 다른 파일명.확장자
            string strSourceFile = DEXT5.LastSaveFile;
            string rtn_value = DEXT5.GetNewFileNameEx("jpg", "TIME");
            if (rtn_value.Equals(""))
            {
                string strLastError = DEXT5.LastErrorMessage;
            }
            */

            /*
            // 이미지 가로(Width) 크기
            string strSourceFile = DEXT5.LastSaveFile;
            int rtn_value = DEXT5.GetImageWidth(strSourceFile);
            if (rtn_value <= 0)
            {
                string strLastError = DEXT5.LastErrorMessage;
            }
            */

            /*
			// 이미지 세로(Height) 크기
			string strSourceFile = DEXT5.LastSaveFile;
			int rtn_value = DEXT5.GetImageHeight(strSourceFile);
			if (rtn_value <= 0)
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/

            /*
			// 이미지 Format 정보
			string strSourceFile = DEXT5.LastSaveFile;
			string rtn_value = DEXT5.GetImageFormat(strSourceFile);
			if (rtn_value == "")
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/


            /*
			// 이미지 파일 크기
			string strSourceFile = DEXT5.LastSaveFile;
			long rtn_value = DEXT5.GetImageFileSize(strSourceFile);
			if (rtn_value <= 0)
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/

            /*
			// 파일 삭제
			string strSourceFile = DEXT5.LastSaveFile;
			int rtn_value = DEXT5.DeleteFile(strSourceFile, false);
			if (rtn_value != 0)
			{
				string strLastError = DEXT5.LastErrorMessage;
			}
			*/

            /*
		    // 원본 파일명 가져오기
            string strOriginalFileName = DEXT5.OriginalFileName;
            */

        }

        context.Response.Clear();

        /*
		// 이미지, 동영상, 파일 등 업로드 동작일 경우 response 되는 경로 변경 방법
		if(!String.IsNullOrEmpty(DEXT5.GetUploadType)) {
			// string DEXT5.MakeResultString(string serverDomain, string serverPath, string parameter, string attribute);
			// serverDomain : Tag의 src에 삽입될 url의 domain을 설정합니다. (/ 설정시 도메인 없이 Virtual Patht로 세팅되며, 빈값("")일 경우 핸들러url 기준 도메인이 세팅됩니다.)
			// serverPath : 도메인 뒤의 path를 의미합니다. (빈값("")일 경우 업로드된 파일의 path 정보가 들어갑니다.)
			// parameter : Tag의 src에 삽입될 url에 추가할 Parameter를 설정합니다.
			// attribute : Tag에 추가할 Attribute를 설정합니다. (제일 앞에 구분자를 삽입하여야 하며, Client에서 설정된 image_custom_property_delimiter 값(기본값:|)으로 구분되어야 합니다.)

			// 아래는 API 사용 예시입니다.
			string resultString = DEXT5.MakeResultString("http://www.dext5.com","/fileData.ashx","param1=1&param2=2","|att1^1|att2^2");
			rtn_message = resultString;
		}
		*/

        context.Response.Write(rtn_message);
    }

    private void BeforeUploadEvent(EventVo eventVo)
    {
        //파일을 업로드하기 전에 발생하는 이벤트 입니다.
        //파일에 대한 저장 경로를 변경해야 하는 경우 사용합니다.

        //HttpContext context = eventVo.GetContext(); //Context Value
        //string strNewFileLocation = eventVo.GetNewFileLocation(); //NewFileLocation Value
        //string strNewFileLocationWithoutFileName = eventVo.GetNewFileLocationWithoutFileName(); //NewFileLocationWithoutFileName Value
        //string strNewFileName = eventVo.GetNewFileName(); //NewFileName Value
        //string strNewFileNameWithoutExtension = eventVo.GetNewFileNameWithoutExtension(); //NewFileNameWithoutExtension Value
        //string strNewFileExtension = eventVo.GetNewFileExtension(); // NewFileExtension Value
        //string strUploadType = eventVo.GetUploadType(); //UploadType Value

        //eventVo.SetNewFileLocation(strNewFileLocation); //Change NewFileLocation Value
        //eventVo.SetNewFileLocationWithoutFileName(strNewFileLocationWithoutFileName); //Change NewFileLocationWithoutFileName Value
        //eventVo.SetNewFileName(strNewFileName); //Change NewFileName Value
        //eventVo.SetNewFileNameWithoutExtension(strNewFileNameWithoutExtension); //Change NewFileNameWithoutExtension Value
        //eventVo.SetNewFileExtension(strNewFileExtension); //Change NewFileExtension Value
        //eventVo.SetCustomError("사용자오류");
    }

    public bool IsReusable { get { return false; } }

}