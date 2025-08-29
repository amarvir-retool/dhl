<Container
  id="container8"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ background: "surfacePrimary", border: "surfacePrimary" }}
>
  <Header>
    <Text
      id="text13"
      value="## Project Dates Definition"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Date
      id="date3"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Project Start Date"
      value="{{ new Date() }}"
    />
    <Date
      id="date4"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Project End Date"
      value="{{ new Date() }}"
    />
    <Text
      id="text16"
      hidden="{{ !nextButton1.disabled }}"
      horizontalAlign="right"
      style={{ map: { color: "secondary" } }}
      value="Project start and end date must be at least a week apart"
      verticalAlign="center"
    />
    <Text
      id="text14"
      value="**First Day of the Week**"
      verticalAlign="center"
    />
    <Text id="text15" value="Monday" verticalAlign="center" />
  </View>
</Container>
