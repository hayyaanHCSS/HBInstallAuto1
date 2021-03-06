﻿///////////////////////////////////////////////////////////////////////////////
//
// This file was automatically generated by RANOREX.
// DO NOT MODIFY THIS FILE! It is regenerated by the designer.
// All your modifications will be lost!
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

using Ranorex;
using Ranorex.Core;
using Ranorex.Core.Testing;
using Ranorex.Core.Repository;

namespace AutoInstall
{
#pragma warning disable 0436 //(CS0436) The type 'type' in 'assembly' conflicts with the imported type 'type2' in 'assembly'. Using the type defined in 'assembly'.
    /// <summary>
    ///The CompareServerAndWSBin recording.
    /// </summary>
    [TestModule("35759013-d826-4ea8-b07a-a9008891e773", ModuleType.Recording, 1)]
    public partial class CompareServerAndWSBin : ITestModule
    {
        /// <summary>
        /// Holds an instance of the AutoInstallRepository repository.
        /// </summary>
        public static AutoInstallRepository repo = AutoInstallRepository.Instance;

        static CompareServerAndWSBin instance = new CompareServerAndWSBin();

        /// <summary>
        /// Constructs a new instance.
        /// </summary>
        public CompareServerAndWSBin()
        {
            ScriptLocation = "C:\\Users\\hayyaan.merchant\\Desktop\\Scripts";
        }

        /// <summary>
        /// Gets a static instance of this recording.
        /// </summary>
        public static CompareServerAndWSBin Instance
        {
            get { return instance; }
        }

#region Variables

        string _ScriptLocation;

        /// <summary>
        /// Gets or sets the value of variable ScriptLocation.
        /// </summary>
        [TestVariable("290a788c-8883-472d-88de-43397cce5b76")]
        public string ScriptLocation
        {
            get { return _ScriptLocation; }
            set { _ScriptLocation = value; }
        }

#endregion

        /// <summary>
        /// Starts the replay of the static recording <see cref="Instance"/>.
        /// </summary>
        [System.CodeDom.Compiler.GeneratedCode("Ranorex", "8.1")]
        public static void Start()
        {
            TestModuleRunner.Run(Instance);
        }

        /// <summary>
        /// Performs the playback of actions in this recording.
        /// </summary>
        /// <remarks>You should not call this method directly, instead pass the module
        /// instance to the <see cref="TestModuleRunner.Run(ITestModule)"/> method
        /// that will in turn invoke this method.</remarks>
        [System.CodeDom.Compiler.GeneratedCode("Ranorex", "8.1")]
        void ITestModule.Run()
        {
            Mouse.DefaultMoveTime = 300;
            Keyboard.DefaultKeyPressTime = 100;
            Delay.SpeedFactor = 1.00;

            Init();

            // run powershell script for any file difference between server and workstation
            try {
                Report.Log(ReportLevel.Info, "Application", "(Optional Action)\r\nrun powershell script for any file difference between server and workstation\r\nRun application 'runWSComparison.bat' with arguments '' in normal mode.", new RecordItemIndex(0));
                Host.Local.RunApplication("runWSComparison.bat", "", ScriptLocation, false);
                Delay.Milliseconds(0);
            } catch(Exception ex) { Report.Log(ReportLevel.Warn, "Module", "(Optional Action) " + ex.Message, new RecordItemIndex(0)); }
            
            Report.Log(ReportLevel.Info, "Delay", "Waiting for 30s.", new RecordItemIndex(1));
            Delay.Duration(30000, false);
            
            try {
                ValidateWSComparison();
                Delay.Milliseconds(0);
            } catch(Exception ex) { Report.Log(ReportLevel.Warn, "Module", "(Optional Action) " + ex.Message, new RecordItemIndex(2)); }
            
            ValidateWSComparisonReportContent();
            Delay.Milliseconds(0);
            
        }

#region Image Feature Data
#endregion
    }
#pragma warning restore 0436
}
