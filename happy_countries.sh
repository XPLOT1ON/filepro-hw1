#!/bin/bash
wget -qO- https://en.wikipedia.org/wiki/World_Happiness_Report?action=raw | grep -oP '{{flag\|[a-z|A-Z\s]+' | cut -d'|' -f2
