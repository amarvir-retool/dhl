<Screen
  id="projectDates"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle="Project Dates"
  title={null}
  urlSlug=""
  uuid="dc7bceaa-2989-41e8-85d6-770bde34d10a"
>
  <JavascriptQuery
    id="query3"
    notificationDuration={4.5}
    query={include("../lib/query3.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    margin="0"
    padding="0"
    sticky={null}
    type="main"
  >
    <Container
      id="container7"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ background: "canvas", border: "canvas" }}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Breadcrumbs
          id="breadcrumbs2"
          itemMode="static"
          value="{{ retoolContext.appUuid }}"
        >
          <Option id="00030" itemType="page" label="Home" />
          <Option id="00031" itemType="page" label="Opportunities" />
          <Option id="00032" itemType="page" label="MHE Revision" />
          <Option
            id="5fef9"
            disabled={false}
            iconPosition="right"
            itemType="app"
            label="June 2024"
          />
          <Option
            id="4969d"
            disabled={false}
            iconPosition="right"
            itemType="app"
            label="Resource Model"
          />
          <Option
            id="33388"
            disabled={false}
            iconPosition="right"
            itemType="app"
            label="Equipment"
          />
          <Option
            id="28375"
            disabled={false}
            iconPosition="right"
            itemType="app"
            label="MHE Configuration & Requirement"
          />
        </Breadcrumbs>
        <Include src="./container6.rsx" />
      </View>
    </Container>
  </Frame>
</Screen>
