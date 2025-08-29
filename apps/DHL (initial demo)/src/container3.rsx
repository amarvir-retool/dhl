<Container
  id="container3"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ map: { background: "canvas" } }}
>
  <Header>
    <Text id="text5" value="## MHE Catalogue" verticalAlign="center" />
    <Text id="text20" value="#### Example 1" verticalAlign="center" />
    <Include src="./tabbedContainer1.rsx" />
    <Text id="text21" value="#### Example 2" verticalAlign="center" />
    <Table
      id="table3"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getMheCatalogue.data }}"
      defaultFilters={{
        0: {
          id: "1e3dd",
          columnId: "88f57",
          operator: "=",
          value: "{{ select1.value }}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      headerTextWrap={true}
      primaryKeyColumnId="9fa19"
      rowHeight="medium"
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="9fa19"
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
        id="f26d9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="model_number"
        label="Model number"
        placeholder="Enter value"
        position="center"
        size={97.8125}
        summaryAggregationMode="none"
      />
      <Column
        id="88f57"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="mhe_category"
        label="Mhe category"
        placeholder="Select option"
        position="center"
        size={122.171875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="38ffa"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="supplier"
        label="Supplier"
        placeholder="Enter value"
        position="center"
        size={88.875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="6d8c0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="mhe_model_name"
        label="Mhe model name"
        placeholder="Enter value"
        position="center"
        size={152.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="5c1c3"
        alignment="left"
        backgroundColor="#fff1b7"
        format="string"
        groupAggregationMode="none"
        key="display_name"
        label="Display name"
        placeholder="Enter value"
        position="center"
        size={166.890625}
        summaryAggregationMode="none"
      />
      <Column
        id="74179"
        alignment="right"
        backgroundColor="#ffb3ba"
        caption="h per annum"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="from_h_per_annum_1"
        label="From"
        placeholder="Enter value"
        position="center"
        size={103.828125}
        summaryAggregationMode="none"
      />
      <Column
        id="e1ec1"
        alignment="right"
        backgroundColor="#ffb3ba"
        caption="(h per annum)"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="to_h_per_annum_1"
        label="To"
        placeholder="Enter value"
        position="center"
        size={106.609375}
        summaryAggregationMode="none"
      />
      <Column
        id="fdcdc"
        alignment="right"
        backgroundColor="#ffb3ba"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        label="Cost"
        placeholder="Enter value"
        position="center"
        referenceId="cost1"
        size={99.515625}
        summaryAggregationMode="none"
      />
      <Column
        id="8510d"
        alignment="right"
        backgroundColor="#ffdfba"
        caption="(h per annum)"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="from_h_per_annum_2"
        label="From"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="95c0d"
        alignment="right"
        backgroundColor="#ffdfba"
        caption="(h per annum)"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="from_h_per_annum_2"
        label="To"
        placeholder="Enter value"
        position="center"
        referenceId="to"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b8e57"
        alignment="left"
        backgroundColor="#ffdfba"
        editable="true"
        format="string"
        groupAggregationMode="none"
        label="Cost"
        placeholder="Enter value"
        position="center"
        referenceId="cost2"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="da60e"
        alignment="right"
        backgroundColor="rgba(216, 235, 220, 1)"
        caption="(h per annum)"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="from_h_per_annum_3"
        label="From"
        placeholder="Enter value"
        position="center"
        referenceId="from"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d7380"
        alignment="right"
        backgroundColor="#d8ebdc"
        caption="(h per annum)"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="to_h_per_annum_3"
        label="To"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="aae01"
        alignment="left"
        backgroundColor="#d8ebdc"
        editable="true"
        format="string"
        groupAggregationMode="none"
        label="Cost"
        placeholder="Enter value"
        position="center"
        referenceId="cost3"
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
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
    </Table>
  </Header>
  <View id="00030" viewKey="View 1">
    <Button id="button2" hidden="" text="Finalize MHE Configuration">
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
    </Button>
  </View>
</Container>
