<GlobalFunctions>
  <SqlQueryUnified
    id="getMheCatalogue"
    enableTransformer={true}
    query={include("./lib/getMheCatalogue.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="707df18c-c727-4962-8a8c-6385329d90d1"
    transformer="return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <State id="showSidebar" value="false" />
  <JavascriptQuery
    id="hideSidebar"
    notificationDuration={4.5}
    query={include("./lib/hideSidebar.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="getMheDailySize"
    query={include("./lib/getMheDailySize.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="707df18c-c727-4962-8a8c-6385329d90d1"
    warningCodes={[]}
  />
  <Function
    id="getCalendar"
    funcBody={include("./lib/getCalendar.js", "string")}
  />
  <Function
    id="getConfigurationTable"
    funcBody={include("./lib/getConfigurationTable.js", "string")}
  />
</GlobalFunctions>
