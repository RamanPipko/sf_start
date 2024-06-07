public with sharing class ApiController {

    @AuraEnabled
    public static RegistrationDataDTO getRegistrationData() {
        try {
            RegistrationService.IRegistrationService service = RegistrationService.getInstance();

            return service.getRegistrationData();
        } catch (Exception exc) {
            throw new AuraHandledException(exc.getMessage());
        }
    }

    @AuraEnabled
    public static MigrationToolRequestDTO prepareTablesListRequestData() {
        try {
            ConnectionService.IConnectionService service = ConnectionService.getInstance();

            return service.prepareTablesListRequestData();
        } catch (Exception exc) {
            throw new AuraHandledException(exc.getMessage());
        }
    }

    @AuraEnabled
    public static MigrationToolRequestDTO prepareExportTableRequestData() {
        try {
            ConnectionService.IConnectionService service = ConnectionService.getInstance();

            return service.prepareExportTableRequestData();
        } catch (Exception exc) {
            throw new AuraHandledException(exc.getMessage());
        }
    }

    @AuraEnabled
    public static MigrationToolRequestDTO prepareImportTableRequestData() {
        try {
            ConnectionService.IConnectionService service = ConnectionService.getInstance();

            return service.prepareImportTableRequestData();
        } catch (Exception exc) {
            throw new AuraHandledException(exc.getMessage());
        }
    }

    @AuraEnabled
    public static MigrationToolRequestDTO prepareDropTableRequestData() {
        try {
            ConnectionService.IConnectionService service = ConnectionService.getInstance();

            return service.prepareDropTableRequestData();
        } catch (Exception exc) {
            throw new AuraHandledException(exc.getMessage());
        }
    }

    @AuraEnabled
    public static MigrationToolRequestDTO prepareDownloadLogFileRequestData() {
        try {
            ConnectionService.IConnectionService service = ConnectionService.getInstance();

            return service.downloadLogFile();
        } catch (Exception exc) {
            throw new AuraHandledException(exc.getMessage());
        }
    }

    @AuraEnabled
    public static MigrationToolRequestDTO prepareReportRequestData() {
        try {
            MigrationService.IMigrationService service = MigrationService.getInstance();

            return service.prepareReportRequestData();
        } catch (Exception exc) {
            throw new AuraHandledException(exc.getMessage());
        }
    }

}