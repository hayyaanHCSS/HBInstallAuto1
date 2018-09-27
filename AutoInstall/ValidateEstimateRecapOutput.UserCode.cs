﻿///////////////////////////////////////////////////////////////////////////////
//
// This file was automatically generated by RANOREX.
// Your custom recording code should go in this file.
// The designer will only add methods to this file, so your custom code won't be overwritten.
// http://www.ranorex.com
//
///////////////////////////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using System.Drawing;
using System.Threading;
using WinForms = System.Windows.Forms;
using System.IO;

using Ranorex;
using Ranorex.Core;
using Ranorex.Core.Repository;
using Ranorex.Core.Testing;

namespace AutoInstall
{
    public partial class ValidateEstimateRecapOutput
    {
        		/// <summary>
        /// This method gets called right after the recording has been started.
        /// It can be used to execute recording specific initialization code.
        /// </summary>
        /// 
        string dir = @"Downloads\InternFinal\InternFinal\HBReportsExportFiles\";
        string file = @"EstimateRecapReport.txt";

        
        string filePath_Expected = @"Downloads\InternFinal\InternFinal\HBReportsExportFiles\Reference\EstimateRecapReportSimiliarContent.txt";
    	string filePath_Current = @"Downloads\InternFinal\InternFinal\HBReportsExportFiles\EstimateRecapReportSimiliarContent.txt";
        string customLogMessage = string.Empty;
        
        
        
        private void Init()
        {
            // Your recording specific initialization code goes here.
        }
        
 		public void EstimateRecapExists()
        {
            string path = Path.Combine(dir,file);
      		if (File.Exists(path))
			   { 	Report.Success("File Exist", "Success! " + file + " exists!");	}
			else                  
			   {	Report.Failure("File Exist", "Fail. " + file + " does not exists.");	}
 		 	
        }   
 		 
        public void ValidateContentEstimateRecap()
        {
            string path = Path.Combine(dir,file);
    	
    	
               // prepare log messages  
		    const string fileNotFoundMessage = "File not found for comparison in Validate_FileContentEqual: {0}";  
		    const string logMessage = "Comparing content of files ({0} vs. {1})";  
		    if (string.IsNullOrEmpty(customLogMessage))  
		    {  
		        customLogMessage = string.Format(logMessage, filePath_Expected, filePath_Current);  
		    }  
		  
		    // check if file exists  
		    if (!System.IO.File.Exists(filePath_Current))  
		    {  
		        throw new Ranorex.RanorexException(string.Format(fileNotFoundMessage, filePath_Current));  
		    }  
		  
		    // check if referencing file exists  
		    if (!System.IO.File.Exists(filePath_Expected))  
		    {  
		        throw new Ranorex.RanorexException(string.Format(fileNotFoundMessage, filePath_Expected));  
		    }  
		  
		    // check if filenames are identical  
		    if (filePath_Expected.Equals(filePath_Current))  
		    {  
		        Ranorex.Validate.IsTrue(true, customLogMessage);  
		    }  
		    else  
		    {  
		        string current = System.IO.File.ReadAllText(filePath_Current);  
		        string expected = System.IO.File.ReadAllText(filePath_Expected);  
		        // validate whether expected value equals to current value  
		        Ranorex.Validate.AreEqual(current, expected, customLogMessage);  
		    }  
        }

    }
}
