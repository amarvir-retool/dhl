let data = table10.data.map(item => {
  return {
    ...item,
    app_mhe: textInput3.value ?? item.app_mhe_mhe,
  };
});

configurationTable.setValue(data);