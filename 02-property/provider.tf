/*
  Author: Noorali (Ali) Lakhani @ nlakhani@akamai.com
  Creation date: 03-MAR-2022
  Last update: 11-NOV-2022
  Description: Onboarding Delivery Configuration Automation Project
*/

provider "akamai" {
  edgerc         = "~/.edgerc" // Access to Akamai account
  config_section = "sea"       // Change this to your own .edgerc section
}
