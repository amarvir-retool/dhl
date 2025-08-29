<Container
  id="container10"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  overflowType="hidden"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  style={{ map: { background: "canvas" } }}
>
  <Header>
    <Text
      id="text19"
      value="## Manual Input MHE Configuration by Time Intervals"
      verticalAlign="center"
    />
    <TextInput id="textInput2" label="Adj. Mhe" labelPosition="top">
      <Event
        event="change"
        method="trigger"
        params={{}}
        pluginId="setAdjMhe"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput id="textInput3" label="App. Mhe" labelPosition="top">
      <Event
        event="change"
        method="trigger"
        params={{}}
        pluginId="setAppMhe"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Table
      id="table10"
      cellSelection="none"
      data="{{ configurationTable.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      includeRowInChangesetArray={true}
      primaryKeyColumnId="d88dc"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./table10ExpandedRow.rsx" />
      <Column
        id="d88dc"
        alignment="left"
        editable={false}
        format="date"
        formatOptions={{ dateFormat: "MMMM yyyy" }}
        groupAggregationMode="none"
        key="mhe_time"
        label="Mhe time"
        placeholder="Enter value"
        position="center"
        size={414}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.mhe_time }}"
      />
      <Column
        id="58b7a"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="adj_mhe"
        label="Adj mhe"
        placeholder="Enter value"
        position="center"
        size={468}
        summaryAggregationMode="none"
      />
      <Column
        id="5faf1"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="app_mhe"
        label="App mhe"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table10"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table10"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="save"
        method="trigger"
        params={{}}
        pluginId="saveOuterTable"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </Header>
  <View id="00030" viewKey="View 1">
    <Button
      id="button4"
      style={{ map: { background: "surfacePrimary" } }}
      text="Save Changes"
    >
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="saveOuterTable"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="saveOuterTable"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="button3" text="View Database">
      <Event
        event="click"
        method="openPage"
        params={{
          options: { map: { passDataWith: "urlParams" } },
          pageName: "mheDailyDatabase",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
