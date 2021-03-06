/*
 Copyright 2016-present The Material Motion Authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

extension Tween {
  /** Commits the tween's first value to the given target. */
  public func commitFirstValue(to target: CALayer) {
    target.setValue(values.first, forKeyPath: keyPath)
  }
  /** Commits the tween's last value to the given target. */
  public func commitLastValue(to target: CALayer) {
    target.setValue(values.last, forKeyPath: keyPath)
  }

  /** Commits the tween's from value to the given target. */
  @available(*, deprecated, message: "Use commitFirstValue instead. Deprecated in v1.2.0.")
  public func commitFromValue(to target: CALayer) {
    target.setValue(from, forKeyPath: keyPath)
  }
  /** Commits the tween's to value to the given target. */
  @available(*, deprecated, message: "Use commitLastValue instead. Deprecated in v1.2.0.")
  public func commitToValue(to target: CALayer) {
    target.setValue(to, forKeyPath: keyPath)
  }
}
