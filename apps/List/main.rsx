<App>
  <ModuleContainerWidget
    id="moduleContainer"
    backgroundColor="white"
    isGlobalWidgetContainer={true}
    overflowType="scroll"
  >
    <Container
      id="group1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
    >
      <View id="00030" viewKey="View 1">
        <ToggleLink
          id="toggleLink1"
          showUnderline="never"
          style={{ activeText: "#0a0a0a", text: "#0a0a0a" }}
          text="Labor"
        >
          <Event
            event="true"
            method="setHidden"
            params={{ map: { hidden: true } }}
            pluginId="linkList1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="change"
            method="setHidden"
            params={{ map: { hidden: false } }}
            pluginId="linkList1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleLink>
        <LinkList
          id="linkList1"
          itemMode="static"
          label=""
          labelPosition="top"
          margin="4px 24px"
          showUnderline="never"
          style={{ map: { activeLabel: "#0a0a0aff" } }}
        >
          <Option id="00030" label="Variable Labor Strategy" />
          <Option id="00031" label="Fixed labor" />
          <Option id="00032" label="Labor Engine" />
          <Option
            id="d1dce"
            disabled={false}
            hidden={false}
            label="Labor Strategy to Labor Engine Interface"
          />
          <Option
            id="d6f65"
            disabled={false}
            hidden={false}
            label="Miscellaneous Labor Costs"
          />
        </LinkList>
        <Container
          id="group3"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
        >
          <View id="00030" viewKey="View 1">
            <ToggleLink
              id="toggleLink3"
              showUnderline="never"
              style={{ activeText: "#0a0a0a", text: "#0a0a0a" }}
              text="Equipment"
            >
              <Event
                event="true"
                method="setHidden"
                params={{ map: { hidden: true } }}
                pluginId="linkList3"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="change"
                method="setHidden"
                params={{ map: { hidden: false } }}
                pluginId="linkList3"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </ToggleLink>
            <LinkList
              id="linkList3"
              itemMode="static"
              label=""
              labelPosition="top"
              margin="4px 24px"
              showUnderline="never"
              style={{ map: { activeLabel: "#0a0a0aff" } }}
            >
              <Option id="00030" label="Equip Quantity Calculation" />
              <Option id="00031" label="Equip Financial Decisions" />
              <Option id="00032" label="MHE Configuration & Requirement" />
            </LinkList>
            <Container
              id="group4"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
            >
              <View id="00030" viewKey="View 1">
                <ToggleLink
                  id="toggleLink4"
                  showUnderline="never"
                  style={{ activeText: "#0a0a0a", text: "#0a0a0a" }}
                  text="IT"
                >
                  <Event
                    event="true"
                    method="setHidden"
                    params={{ map: { hidden: true } }}
                    pluginId="linkList4"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                  <Event
                    event="change"
                    method="setHidden"
                    params={{ map: { hidden: false } }}
                    pluginId="linkList4"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </ToggleLink>
                <LinkList
                  id="linkList4"
                  itemMode="static"
                  label=""
                  labelPosition="top"
                  margin="4px 24px"
                  showUnderline="never"
                  style={{ map: { activeLabel: "#0a0a0aff" } }}
                >
                  <Option id="00030" label="IT Summary" />
                  <Option id="00031" label="IT BRD" />
                </LinkList>
                <Container
                  id="group5"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                  style={{ map: { background: "rgba(255, 255, 255, 0)" } }}
                >
                  <View id="00030" viewKey="View 1">
                    <ToggleLink
                      id="toggleLink5"
                      showUnderline="never"
                      style={{ activeText: "#0a0a0a", text: "#0a0a0a" }}
                      text="Side Tools"
                    >
                      <Event
                        event="true"
                        method="setHidden"
                        params={{ map: { hidden: true } }}
                        pluginId="linkList5"
                        type="widget"
                        waitMs="0"
                        waitType="debounce"
                      />
                      <Event
                        event="change"
                        method="setHidden"
                        params={{ map: { hidden: false } }}
                        pluginId="linkList5"
                        type="widget"
                        waitMs="0"
                        waitType="debounce"
                      />
                    </ToggleLink>
                    <LinkList
                      id="linkList5"
                      itemMode="static"
                      label=""
                      labelPosition="top"
                      margin="4px 24px"
                      showUnderline="never"
                      style={{ map: { activeLabel: "#0a0a0aff" } }}
                    >
                      <Option id="00030" label="Space Calculation" />
                      <Option id="00031" label="Space Calculation Result" />
                    </LinkList>
                  </View>
                </Container>
              </View>
            </Container>
          </View>
        </Container>
      </View>
    </Container>
  </ModuleContainerWidget>
</App>
