<SidebarFrame
  id="sidebarFrame1"
  enableFullBleed={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden=""
  isHiddenOnMobile={true}
  margin="0"
  padding="0"
  width="400px
"
>
  <Body>
    <Container
      id="container4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden=""
      margin="0"
      overflowType="hidden"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Navigation
          id="navigation1"
          appTargetByIndex=""
          captionByIndex=""
          data=""
          disabledByIndex=""
          hiddenByIndex=""
          highlightByIndex=""
          iconByIndex=""
          iconPositionByIndex=""
          itemMode="static"
          itemTypeByIndex=""
          keyByIndex=""
          labels=""
          orientation="vertical"
          parentKeyByIndex=""
          persistUrlParamsByIndex=""
          screenTargetByIndex=""
          screenTargetIdByIndex=""
          src={null}
          srcType={null}
          style={{}}
          tooltipByIndex=""
        >
          <Option
            id="00030"
            icon="bold/travel-map-flag"
            iconPosition="top"
            itemType="page"
            label="Definitions"
          />
          <Option
            id="00031"
            icon="bold/interface-setting-slider-horizontal-square"
            iconPosition="top"
            itemType="page"
            label="Activity Model"
          />
          <Option
            id="00032"
            icon="bold/interface-security-shield-person—shield-secure-security-person"
            iconPosition="top"
            itemType="custom"
            label="Resource Model"
          >
            <Event
              event="click"
              method="setValue"
              params={{ map: { value: "{{ !showSidebar.value }}" } }}
              pluginId="showSidebar"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Option>
          <Option
            id="0d0c1"
            disabled={false}
            hidden={false}
            icon="bold/money-cash-briefcase-dollar-alternate"
            iconPosition="top"
            itemType="app"
            label="Pricing"
          />
          <Event
            event="click"
            method="openPage"
            params={{ map: { pageName: "{{ item.id }}" } }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Navigation>
        <Container
          id="container5"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          heightType="fixed"
          margin="0"
          overflowType="hidden"
          padding="12px"
          showBody={true}
          style={{ map: { background: "surfacePrimary" } }}
        >
          <Header>
            <Text
              id="containerTitle2"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="00030" viewKey="View 1">
            <Module
              id="list1"
              name="List"
              overflowType="scroll"
              pageUuid="1420188b-3f7b-4482-ae59-ae8043abbbae"
            />
          </View>
        </Container>
      </View>
    </Container>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ map: { background: "automatic" } }}
    />
  </Footer>
</SidebarFrame>
