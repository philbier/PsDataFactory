#Requires -Modules @{ ModuleName='Pester'; ModuleVersion='5.0.0' }, PsDac

Describe New-AzureDatabricksDeltaLakeTable {

    BeforeAll {
        Import-Module $PSScriptRoot\..\src\PsDataFactory.psd1 -Force -ErrorAction Stop
    }

    BeforeEach {
        $LinkedServiceReference = New-AdfLinkedServiceReference -Name MyLinkedService
    }

    It 'works with Schema' {
        New-AdfAzureDatabricksDeltaLakeTable -Name MyDataset -SchemaName MySchema -TableName MyTable -LinkedServiceReference $LinkedServiceReference -UseSchema -ErrorAction Stop
    }
}
