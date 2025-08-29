<Container
  id="container6"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ map: { background: "canvas" } }}
>
  <Header>
    <Text
      id="text8"
      value="## Project Dates Definition"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Date
      id="date1"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Project Start Date"
      value="{{ new Date() }}"
    />
    <Date
      id="date2"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Project End Date"
      value="{{ new Date() }}"
    />
    <Text id="text9" value="**First Day of the Week**" verticalAlign="center" />
    <Text id="text10" value="Monday" verticalAlign="center" />
    <Button
      id="button1"
      disabled="{{!checkDateDifference(date1.value, date2.value)}}"
      hidden=""
      text="View Catalogue"
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
    </Button>
    <Text
      id="text11"
      hidden="{{ !button1.disabled }}"
      horizontalAlign="right"
      style={{ map: { color: "secondary" } }}
      value="Project start and end date must be at least a week apart"
      verticalAlign="center"
    />
  </View>
</Container>
