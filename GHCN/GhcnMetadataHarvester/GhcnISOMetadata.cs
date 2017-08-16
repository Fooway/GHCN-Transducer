﻿using System;

namespace GhcnHarvester
{
    class GhcnISOMetadata
    {
        public int MetadataID { get; set; }
        public string TopicCategory { get; set; }
        public string Title { get; set; }
        public string Abstract { get; set; }
        public string ProfileVersion { get; set; }
        public string MetadataLink { get; set; }
    }
}