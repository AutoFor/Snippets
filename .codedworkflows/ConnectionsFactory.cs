using UiPath.CodedWorkflows;
using System;

namespace Snippets
{
    public class ExcelFactory
    {
        public UiPath.MicrosoftOffice365.Activities.Api.ExcelConnection Shared_seiya_kawashima_autofor_co_jp { get; set; }

        public ExcelFactory(ICodedWorkflowsServiceContainer resolver)
        {
            Shared_seiya_kawashima_autofor_co_jp = new UiPath.MicrosoftOffice365.Activities.Api.ExcelConnection("47e52d52-aff3-46f4-a8d9-0c542ef46409", resolver);
        }
    }

    public class O365MailFactory
    {
        public UiPath.MicrosoftOffice365.Activities.Api.MailConnection Shared_seiya_kawashima_autofor_co_jp { get; set; }

        public O365MailFactory(ICodedWorkflowsServiceContainer resolver)
        {
            Shared_seiya_kawashima_autofor_co_jp = new UiPath.MicrosoftOffice365.Activities.Api.MailConnection("c29c7db3-aba5-4bb0-ac0a-8e8642aac0a8", resolver);
        }
    }

    public class OneDriveFactory
    {
        public UiPath.MicrosoftOffice365.Activities.Api.OneDriveConnection Shared_seiya_kawashima_autofor_co_jp { get; set; }

        public OneDriveFactory(ICodedWorkflowsServiceContainer resolver)
        {
            Shared_seiya_kawashima_autofor_co_jp = new UiPath.MicrosoftOffice365.Activities.Api.OneDriveConnection("47e52d52-aff3-46f4-a8d9-0c542ef46409", resolver);
        }
    }
}