﻿using System;
using System.Collections.Generic;
using System.Text;

namespace UPC.APIBusiness.DBEntity.Base
{
    public class EntityBaseResponse
    {
        public bool issuccess { get; set; }
        public string errorcode { get; set; }
        public string errormessage { get; set; }
        public object data { get; set; }
    }
}