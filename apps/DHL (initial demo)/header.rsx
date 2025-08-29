<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  style={{ map: { "primary-surface": "primary" } }}
  styleContext={{}}
  type="header"
>
  <Image
    id="image1"
    fit="contain"
    heightType="fixed"
    margin="4px 24px"
    retoolStorageFileId="878d6adb-dfe5-44c3-9586-f66c4cb8c47d"
    src="https://picsum.photos/id/1025/800/600"
    srcType="retoolStorageFileId"
  >
    <Event
      event="click"
      method="openPage"
      params={{
        options: { map: { passDataWith: "urlParams" } },
        pageName: "steppedWorkflow",
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="click"
      method="trigger"
      params={{}}
      pluginId="hideSidebar"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Image>
  <TextInput
    id="textInput1"
    iconBefore="bold/interface-search-circle"
    label=""
    labelPosition="top"
    placeholder="Search"
  />
</Frame>
