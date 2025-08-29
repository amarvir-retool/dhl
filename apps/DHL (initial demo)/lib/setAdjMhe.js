let data = table10.data.map(item => {
  return {
    ...item,
    adj_mhe: textInput2.value ?? item.adj_mhe,
  };
});

configurationTable.setValue(data);