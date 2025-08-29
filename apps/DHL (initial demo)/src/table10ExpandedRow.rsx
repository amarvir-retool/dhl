<ExpandedRow id="table10ExpandedRow">
  <Table
    id="table11"
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ currentSourceRow.subweeks }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    heightType="auto"
    margin="0"
    primaryKeyColumnId="d5e02"
    rowHeight="medium"
    style={{ background: "canvas", borderRadius: "0px" }}
    toolbarPosition="bottom"
  >
    <Column
      id="d5e02"
      alignment="left"
      editable={false}
      format="string"
      groupAggregationMode="none"
      key="mhe_time"
      label="Mhe time"
      placeholder="Enter value"
      position="center"
      size={680}
      summaryAggregationMode="none"
    />
    <Column
      id="d9b58"
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
      size={226}
      summaryAggregationMode="none"
    />
    <Column
      id="a118c"
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
    <Column
      id="7d8bf"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      hidden="true"
      label="parent_mhe_time"
      placeholder="Enter value"
      position="center"
      referenceId="parent_mhe_time"
      size={100}
      summaryAggregationMode="none"
      valueOverride="{{ currentRow.mhe_time }}"
    />
    <Event
      event="save"
      method="setValue"
      params={{ map: { key: "{{ table10.changesetArray.toString()}}" } }}
      pluginId=""
      type="localStorage"
      waitMs="0"
      waitType="debounce"
    />
  </Table>
</ExpandedRow>
