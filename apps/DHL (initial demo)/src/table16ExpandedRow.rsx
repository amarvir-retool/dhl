<ExpandedRow id="table16ExpandedRow">
  <Table
    id="table17"
    cellSelection="none"
    clearChangesetOnSave={true}
    data="{{ currentSourceRow.subweeks }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    emptyMessage="No rows found"
    enableSaveActions={true}
    heightType="auto"
    margin="0"
    rowHeight="medium"
    showColumnBorders={true}
    style={{ background: "canvas", borderRadius: "0px" }}
    toolbarPosition="bottom"
  >
    <Column
      id="d5e02"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      key="mhe_time"
      label="Mhe time"
      placeholder="Enter value"
      position="center"
      size={311}
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
  </Table>
</ExpandedRow>
