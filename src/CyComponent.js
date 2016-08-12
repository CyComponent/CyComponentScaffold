import { bindActionCreators } from 'redux'
import { connect } from 'react-redux'

import CyComponent from './component/CyComponent'

import "./style/component.scss"

function mapStateToProps(state) {
  return {}
}

function mapDispatchToProps(dispatch) {
  return {}
}

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(CyComponent)
