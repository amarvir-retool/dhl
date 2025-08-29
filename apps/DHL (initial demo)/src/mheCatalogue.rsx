<Screen
  id="mheCatalogue"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
  uuid="2e7e5d27-ef7c-40cf-ac22-6af15c424dc2"
>
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <IconText
      id="iconText1"
      icon="bold/interface-arrows-button-left"
      text="Back to Date Selection"
    >
      <Event
        event="click"
        method="openPage"
        params={{
          options: { map: { passDataWith: "urlParams" } },
          pageName: "projectDates",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </IconText>
    <Include src="./container3.rsx" />
  </Frame>
</Screen>
