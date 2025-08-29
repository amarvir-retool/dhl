<Screen
  id="mheConfiguration"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="MHE Configuration"
  urlSlug=""
  uuid="8d3662cb-fe8d-4bb3-9e1b-d9d47bbf0001"
>
  <JavascriptQuery
    id="saveOuterTable"
    isMultiplayerEdited={false}
    query={include("../lib/saveOuterTable.js", "string")}
    resourceName="JavascriptQuery"
  />
  <State id="configurationTable" value="{{ getConfigurationTable.value }}" />
  <JavascriptQuery
    id="setAdjMhe"
    notificationDuration={4.5}
    query={include("../lib/setAdjMhe.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="setAppMhe"
    notificationDuration={4.5}
    query={include("../lib/setAppMhe.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    margin="0"
    padding="0"
    type="main"
  >
    <IconText
      id="iconText4"
      icon="bold/interface-arrows-button-left"
      text="Back to Catalogue"
    >
      <Event
        event="click"
        method="openPage"
        params={{
          options: { map: { passDataWith: "urlParams" } },
          pageName: "mheCatalogue",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </IconText>
    <Include src="./container10.rsx" />
  </Frame>
</Screen>
