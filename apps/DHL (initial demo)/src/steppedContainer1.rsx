<Container
  id="steppedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Steps
      id="steps1"
      horizontalAlign="center"
      itemMode="static"
      navigateContainer={true}
      showStepNumbers={true}
      targetContainerId="steppedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Step 1" />
      <Option id="00031" value="Step 2" />
      <Option id="00032" value="Step 3" />
    </Steps>
  </Header>
  <View id="00030" viewKey="Project Dates">
    <Include src="./container8.rsx" />
  </View>
  <View id="00031" viewKey="MHE Catalogue">
    <Text id="text22" value="## MHE Catalogue" verticalAlign="center" />
    <Include src="./tabbedContainer2.rsx" />
  </View>
  <View id="00032" viewKey="MHE Configuration">
    <Text
      id="text24"
      value="## Manual Input MHE Configuration by Time Intervals"
      verticalAlign="center"
    />
    <Table
      id="table16"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getConfigurationTable.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./table16ExpandedRow.rsx" />
      <Column
        id="d88dc"
        alignment="left"
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
        size={100}
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
          pluginId="table16"
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
          pluginId="table16"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View
    id="9672f"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="MHE Database"
  >
    <Text
      id="text25"
      value="## Daily Database - Manual Input"
      verticalAlign="center"
    />
    <NumberInput
      id="numberInput2"
      currency="USD"
      inputValue={0}
      label="Adj. Long Term MHE Multiplier"
      labelPosition="top"
      placeholder="Adj. Long Term MHE Multiplier"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Table
      id="table18"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getMheDailyStepped.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount="{{ getMheDailySize.data.count[0] }}"
      overflowType="pagination"
      primaryKeyColumnId="8ea2f"
      serverPaginated={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="8ea2f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2e187"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="date"
        label="Date"
        placeholder="Enter value"
        position="center"
        size={159}
      />
      <Column
        id="c8fe9"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="month_year_name"
        label="Month year name"
        placeholder="Select option"
        position="center"
        size={142}
        summaryAggregationMode="none"
      />
      <Column
        id="e755f"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="week_commencing"
        label="Week commencing"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="17c76"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="calendar_week_name"
        label="Calendar week name"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="49946"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="calendar_year_name"
        label="Calendar year name"
        placeholder="Enter value"
        position="center"
        size={145}
      />
      <Column
        id="4f8e1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="mhe_name"
        label="Mhe name"
        placeholder="Enter value"
        position="center"
        size={363}
      />
      <Column
        id="b658d"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="adjusted_long_term_mhe_units_project_level"
        label="Adjusted long term mhe units project level"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b5b01"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="adjusted_long_term_mhe_units_annual_level"
        label="Adjusted long term mhe units annual level"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="89f65"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="adjusted_long_term_mhe_units_month_level"
        label="Adjusted long term mhe units month level"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="3ba9f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="adjusted_long_term_mhe_units_week_level"
        label="Adjusted long term mhe units week level"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="848a0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="applied_mhe_unit_requirement"
        label="Applied mhe unit requirement"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c3555"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="Adjusted Long Term MHE Units"
        placeholder="Enter value"
        position="center"
        referenceId="adjustedLongTermMheUnits"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.adjusted_long_term_mhe_units_project_level * numberInput2.value }}"
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
          pluginId="table18"
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
          pluginId="table18"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <Footer>
    <Button
      id="prevButton1"
      disabled="{{ steppedContainer1.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        event="click"
        method="showPreviousVisibleView"
        params={{ map: { wrap: false } }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton1"
      disabled="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length || !checkDateDifference(date3.value, date4.value)}}"
      iconAfter="bold/interface-arrows-right-alternate"
      text="Next

"
    >
      <Event
        event="click"
        method="showNextVisibleView"
        params={{ map: { wrap: false } }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
