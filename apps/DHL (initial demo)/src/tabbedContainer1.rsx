<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Tab 1" />
      <Option id="00031" value="Tab 2" />
      <Option id="00032" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="00030" viewKey="Lease Cost Range 1">
    <Select
      id="select1"
      data="{{ getMheCatalogue.data }}"
      emptyMessage="No options"
      label="MHE Category"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.mhe_category }}"
    />
    <Table
      id="table19"
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
        size={298.546875}
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
        size={296.890625}
        summaryAggregationMode="none"
      />
      <Column
        id="74179"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="from_h_per_annum_2"
        label="From"
        placeholder="Enter value"
        position="center"
        size={57.828125}
        summaryAggregationMode="none"
        tooltip="(h per annum)"
      />
      <Column
        id="e1ec1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="to_h_per_annum_2"
        label="To"
        placeholder="Enter value"
        position="center"
        size={56.609375}
        summaryAggregationMode="none"
        tooltip="(h per annum)"
      />
      <Column
        id="cb4ce"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Delta"
        placeholder="Enter value"
        position="center"
        referenceId="delta"
        size={56}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.to_h_per_annum_2  - currentSourceRow.from_h_per_annum_2 }}"
      />
      <Column
        id="fdcdc"
        alignment="right"
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
        size={42.515625}
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
  </View>
  <View id="00031" viewKey="Lease Cost Range 2">
    <Select
      id="select2"
      data="{{ getMheCatalogue.data }}"
      emptyMessage="No options"
      label="MHE Category"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.mhe_category }}"
    />
    <Table
      id="table7"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getMheCatalogue.data }}"
      defaultFilters={{
        0: {
          id: "1e3dd",
          columnId: "88f57",
          operator: "=",
          value: "{{ select2.value }}",
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
        size={298.546875}
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
        size={296.890625}
        summaryAggregationMode="none"
      />
      <Column
        id="74179"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="from_h_per_annum_2"
        label="From"
        placeholder="Enter value"
        position="center"
        size={57.828125}
        summaryAggregationMode="none"
        tooltip="(h per annum)"
      />
      <Column
        id="e1ec1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="to_h_per_annum_2"
        label="To"
        placeholder="Enter value"
        position="center"
        size={56.609375}
        summaryAggregationMode="none"
        tooltip="(h per annum)"
      />
      <Column
        id="cb4ce"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Delta"
        placeholder="Enter value"
        position="center"
        referenceId="delta"
        size={56}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.to_h_per_annum_2  - currentSourceRow.from_h_per_annum_2 }}"
      />
      <Column
        id="fdcdc"
        alignment="right"
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
        size={42.515625}
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
  </View>
  <View id="00032" viewKey="Lease Cost Range 3">
    <Select
      id="select3"
      data="{{ getMheCatalogue.data }}"
      emptyMessage="No options"
      label="MHE Category"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.mhe_category }}"
    />
    <Table
      id="table8"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getMheCatalogue.data }}"
      defaultFilters={{
        0: {
          id: "1e3dd",
          columnId: "88f57",
          operator: "=",
          value: "{{ select3.value }}",
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
        size={298.546875}
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
        size={296.890625}
        summaryAggregationMode="none"
      />
      <Column
        id="74179"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="from_h_per_annum_3"
        label="From"
        placeholder="Enter value"
        position="center"
        size={57.828125}
        summaryAggregationMode="none"
        tooltip="(h per annum)"
      />
      <Column
        id="e1ec1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="to_h_per_annum_3"
        label="To"
        placeholder="Enter value"
        position="center"
        size={56.609375}
        summaryAggregationMode="none"
        tooltip="(h per annum)"
      />
      <Column
        id="cb4ce"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Delta"
        placeholder="Enter value"
        position="center"
        referenceId="delta"
        size={56}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.to_h_per_annum_3  - currentSourceRow.from_h_per_annum_3 }}"
      />
      <Column
        id="fdcdc"
        alignment="right"
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
        size={42.515625}
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
  </View>
</Container>
