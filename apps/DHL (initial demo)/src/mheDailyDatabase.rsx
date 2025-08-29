<Screen
  id="mheDailyDatabase"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title={null}
  urlSlug=""
  uuid="ac852ebd-3600-4e40-97ef-0ee273235966"
>
  <SqlQueryUnified
    id="getMheDaily"
    notificationDuration={4.5}
    query={include("../lib/getMheDaily.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="707df18c-c727-4962-8a8c-6385329d90d1"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <RetoolAIQuery
    id="query4"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="query5"
    notificationDuration={4.5}
    query={include("../lib/query5.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="707df18c-c727-4962-8a8c-6385329d90d1"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Frame
    id="$main5"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <IconText
      id="iconText3"
      icon="bold/interface-arrows-button-left"
      text="Back to Multi-Annum Screen"
    >
      <Event
        event="click"
        method="openPage"
        params={{
          options: { map: { passDataWith: "urlParams" } },
          pageName: "mheConfiguration",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </IconText>
    <Container
      id="container9"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="text18"
          value="## Daily Database - Manual Input"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <NumberInput
          id="numberInput1"
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
          id="table9"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getMheDaily.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          groupByColumns={{}}
          limitOffsetRowCount="{{getMheDailySize.data.count[0]}}"
          overflowType="pagination"
          primaryKeyColumnId="7fcbb"
          rowHeight="medium"
          serverPaginated={true}
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{}}
          toolbarPosition="bottom"
        >
          <Column
            id="7fcbb"
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
            id="19910"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="date"
            label="Date"
            placeholder="Enter value"
            position="center"
            size={112}
            summaryAggregationMode="none"
          />
          <Column
            id="5df54"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="calendar_week_name"
            label="Calendar week name"
            placeholder="Enter value"
            position="center"
            size={150}
            summaryAggregationMode="none"
          />
          <Column
            id="d6a9c"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="month_year_name"
            label="Month year name"
            placeholder="Select option"
            position="center"
            size={144}
            summaryAggregationMode="none"
          />
          <Column
            id="acc47"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            key="week_commencing"
            label="Week commencing"
            placeholder="Enter value"
            position="center"
            size={139}
            summaryAggregationMode="none"
          />
          <Column
            id="2684b"
            alignment="left"
            format="string"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="calendar_year_name"
            label="Calendar year name"
            placeholder="Enter value"
            position="center"
            size={191}
            summaryAggregationMode="none"
          />
          <Column
            id="c0102"
            alignment="left"
            backgroundColor="#fff1b7"
            format="string"
            groupAggregationMode="none"
            key="mhe_name"
            label="Mhe name"
            placeholder="Enter value"
            position="center"
            size={274}
            summaryAggregationMode="none"
          />
          <Column
            id="ea4b7"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="adjusted_long_term_mhe_units_project_level"
            label="Long term MHE Units"
            placeholder="Enter value"
            position="center"
            size={254}
            summaryAggregationMode="none"
          />
          <Column
            id="58063"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            label="Adjusted Long Term MHE Units"
            placeholder="Enter value"
            position="center"
            referenceId="adjustedLongTermMheUnits"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ numberInput1.value * currentSourceRow.adjusted_long_term_mhe_units_project_level }}"
          />
          <Column
            id="2c4bf"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="adjusted_long_term_mhe_units_annual_level"
            label="Adjusted long term mhe units annual level"
            placeholder="Enter value"
            position="center"
            size={157}
            summaryAggregationMode="none"
          />
          <Column
            id="beeed"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="adjusted_long_term_mhe_units_month_level"
            label="Adjusted long term mhe units month level"
            placeholder="Enter value"
            position="center"
            size={169}
            summaryAggregationMode="none"
          />
          <Column
            id="3fefb"
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
            size={122}
            summaryAggregationMode="none"
          />
          <Column
            id="25367"
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
            id="8ceaf"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            label="New Column"
            placeholder="Enter value"
            position="center"
            referenceId="newColumn"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ currentSourceRow.adjusted_long_term_mhe_units_project_level + 10 }}"
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
          />
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          />
        </Table>
      </View>
    </Container>
  </Frame>
</Screen>
