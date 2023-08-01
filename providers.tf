terraform{
    required_version = ">=1.0"

    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>3.0"
        }

        random = {
            source = "hashicorp/azurerm"
            version = "~>3.0"

        }
    }
}

provider "azurerm"{
    features{}
    Subscription-ID = "441cdc6e-a12d-43fe-bb03-82141f456e04"
    client-Id = "b44c21e1-2768-4556-92e5-d537bade52c7"
    Secret-ID = "e0523ec2-fe01-4c03-8316-7daed10c123b"
}