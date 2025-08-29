<Screen
  id="steppedWorkflow"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
  uuid="168f55cc-8fbb-42ba-b7ce-e46452d565de"
>
  <SqlQueryUnified
    id="getMheDailyStepped"
    notificationDuration={4.5}
    query={include("../lib/getMheDailyStepped.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="707df18c-c727-4962-8a8c-6385329d90d1"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Include src="./steppedContainer1.rsx" />
  </Frame>
</Screen>
