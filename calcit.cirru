
{}
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |respo.main/main!) (:output |src) (:port 6001) (:reload-fn |respo.main/reload!) (:storage-key |calcit.cirru) (:version |0.14.41)
    :modules $ [] |memof/compact.cirru |lilac/compact.cirru |calcit-test/compact.cirru
  :entries $ {}
  :ir $ {} (:package |respo)
    :files $ {}
      |respo.app.comp.container $ {}
        :defs $ {}
          |comp-container $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |comp-container) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584718727659) (:by |rJoDgvdeG) (:text |states) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:states) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |style-global) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |r $ {} (:at 1504774121421) (:by |root) (:text |comp-todolist) (:type :leaf)
                          |v $ {} (:at 1584718729784) (:by |rJoDgvdeG) (:text |states) (:type :leaf)
                          |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:tasks) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                      |s $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |style-states) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |<>) (:type :leaf)
                              |r $ {} (:at 1515895708075) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1515895708881) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                                  |L $ {} (:at 1623582927810) (:by |rJoDgvdeG) (:text "||states: ") (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |pr-str) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1505327099898) (:by |root) (:text |:states) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                      |t $ {} (:at 1656036581270) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1656036584992) (:by |rJoDgvdeG) (:text |comp-global-keydown) (:type :leaf)
                          |X $ {} (:at 1656036736229) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656036736614) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1656036737351) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656036756646) (:by |rJoDgvdeG) (:text |:disabled-commands) (:type :leaf)
                                  |b $ {} (:at 1656036867350) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1656036894841) (:by |rJoDgvdeG) (:text |#{}) (:type :leaf)
                                      |b $ {} (:at 1656036980245) (:by |rJoDgvdeG) (:text "|\"s") (:type :leaf)
                                      |h $ {} (:at 1656036982066) (:by |rJoDgvdeG) (:text "|\"p") (:type :leaf)
                          |b $ {} (:at 1656036585590) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656036586012) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                              |b $ {} (:at 1656036586746) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656036588563) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                  |b $ {} (:at 1656036589332) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                              |h $ {} (:at 1656036590111) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656036593406) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                                  |b $ {} (:at 1656036697578) (:by |rJoDgvdeG) (:text "|\"keydown") (:type :leaf)
                                  |h $ {} (:at 1656036595798) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
          |style-global $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-global) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:font-family) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||Avenir,Verdana) (:type :leaf)
          |style-states $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-states) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:padding) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |8) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.container) (:type :leaf)
            |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |f $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540830018171) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1508915063808) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                        |v $ {} (:at 1504774121421) (:by |root) (:text |span) (:type :leaf)
                        |x $ {} (:at 1504774121421) (:by |root) (:text |<>) (:type :leaf)
                        |yT $ {} (:at 1584718739742) (:by |rJoDgvdeG) (:text |>>) (:type :leaf)
                        |yj $ {} (:at 1610440507879) (:by |rJoDgvdeG) (:text |a) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.todolist) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |comp-todolist) (:type :leaf)
                |x $ {} (:at 1592134715191) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1592134718074) (:by |rJoDgvdeG) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1592134718793) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1592134718980) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1592134722022) (:by |rJoDgvdeG) (:text |=<) (:type :leaf)
                |y $ {} (:at 1656036562023) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1656036571371) (:by |rJoDgvdeG) (:text |respo.comp.global-keydown) (:type :leaf)
                    |b $ {} (:at 1656036572678) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1656036572901) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1656036578628) (:by |rJoDgvdeG) (:text |comp-global-keydown) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.app.comp.task $ {}
        :defs $ {}
          |comp-task $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1536679003089) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |comp-task) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |states) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584719172690) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584719173865) (:by |rJoDgvdeG) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1584719174123) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584719176906) (:by |rJoDgvdeG) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584719177962) (:by |rJoDgvdeG) (:text |states) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |state) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610212419277) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |states) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text ||) (:type :leaf)
                  |r $ {} (:at 1571586889509) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1571586890799) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                      |L $ {} (:at 1571586895374) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571586927464) (:by |rJoDgvdeG) (:text |effect-log) (:type :leaf)
                          |j $ {} (:at 1572083411761) (:by |rJoDgvdeG) (:text |task) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |style-task) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |comp-inspect) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text ||Task) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:left) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |200) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |button) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1651180847678) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651180850144) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1651180850506) (:by |rJoDgvdeG) (:text |style-done) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610447660397) (:by |rJoDgvdeG) (:text "|\"background-color") (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:done?) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |200) (:type :leaf)
                                                      |r $ {} (:at 1549948909284) (:by |rJoDgvdeG) (:text |20) (:type :leaf)
                                                      |v $ {} (:at 1504774121421) (:by |root) (:text |80) (:type :leaf)
                                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |200) (:type :leaf)
                                                      |r $ {} (:at 1549948914057) (:by |rJoDgvdeG) (:text |80) (:type :leaf)
                                                      |v $ {} (:at 1504774121421) (:by |root) (:text |70) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1513785917865) (:by |root) (:text |:on-click) (:type :leaf)
                                      |r $ {} (:at 1584719149495) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1584719150633) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                          |L $ {} (:at 1584719150856) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584719151115) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1584719151808) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584719153664) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |:toggle) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                          |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |8) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                          |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |input) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:value) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651181046534) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                                      |j $ {} (:at 1651181043400) (:by |rJoDgvdeG) (:text |widget/style-input) (:type :leaf)
                                  |v $ {} (:at 1505382679150) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1513785912794) (:by |root) (:text |:on-input) (:type :leaf)
                                      |j $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584719163429) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1584719164292) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                              |j $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |task-id) (:type :leaf)
                                                      |j $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |task) (:type :leaf)
                                                  |j $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |text) (:type :leaf)
                                                      |j $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |:value) (:type :leaf)
                                                          |j $ {} (:at 1584719160982) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                              |r $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584719134707) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |:update) (:type :leaf)
                                                  |r $ {} (:at 1584719138745) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1584719139337) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                                      |T $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |j $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |:id) (:type :leaf)
                                                          |r $ {} (:at 1584719129318) (:by |rJoDgvdeG) (:text |task-id) (:type :leaf)
                                                      |j $ {} (:at 1584719141429) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584719142464) (:by |rJoDgvdeG) (:text |:text) (:type :leaf)
                                                          |j $ {} (:at 1584719143230) (:by |rJoDgvdeG) (:text |text) (:type :leaf)
                          |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |8) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                          |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |input) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:value) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |state) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651181061428) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                                      |j $ {} (:at 1651181064305) (:by |rJoDgvdeG) (:text |widget/style-input) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1513786754951) (:by |root) (:text |:on-input) (:type :leaf)
                                      |j $ {} (:at 1584719089367) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1584719090017) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                          |L $ {} (:at 1584719090626) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584719090845) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1584719091699) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                          |P $ {} (:at 1584719094021) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584719094932) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1584719096043) (:by |rJoDgvdeG) (:text |cursor) (:type :leaf)
                                              |r $ {} (:at 1584719097135) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584719097786) (:by |rJoDgvdeG) (:text |:value) (:type :leaf)
                                                  |j $ {} (:at 1584720105188) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                          |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |8) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                          |yv $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                                  |n $ {} (:at 1651176559735) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651176561461) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1651176583790) (:by |rJoDgvdeG) (:text |widget/style-button) (:type :leaf)
                                  |r $ {} (:at 1515603131600) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1515603136628) (:by |root) (:text |:on-click) (:type :leaf)
                                      |T $ {} (:at 1584719102767) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1584719103368) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                          |L $ {} (:at 1584719103687) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584719103914) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1584719104519) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584719108258) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |:remove) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |<>) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text ||Remove) (:type :leaf)
                          |yx $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |8) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                          |yy $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |<>) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |state) (:type :leaf)
          |effect-log $ {} (:at 1571586937354) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1571586939749) (:by |rJoDgvdeG) (:text |defeffect) (:type :leaf)
              |j $ {} (:at 1571586937354) (:by |rJoDgvdeG) (:text |effect-log) (:type :leaf)
              |r $ {} (:at 1571586937354) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571586950105) (:by |rJoDgvdeG) (:text |task) (:type :leaf)
              |x $ {} (:at 1571586952422) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571586957133) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                  |j $ {} (:at 1571586961474) (:by |rJoDgvdeG) (:text |parent) (:type :leaf)
                  |v $ {} (:at 1572885426290) (:by |rJoDgvdeG) (:text |at-place?) (:type :leaf)
              |y $ {} (:at 1571586962138) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1584720137605) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |T $ {} (:at 1571586967079) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                  |j $ {} (:at 1571586977512) (:by |rJoDgvdeG) (:text "|\"Task effect") (:type :leaf)
                  |x $ {} (:at 1571586982894) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                  |y $ {} (:at 1572885427880) (:by |rJoDgvdeG) (:text |at-place?) (:type :leaf)
              |yT $ {} (:at 1572086688548) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1643704195073) (:by |rJoDgvdeG) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1572086691733) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                  |n $ {} (:at 1643707442256) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1572086692002) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1572086697795) (:by |rJoDgvdeG) (:text |:mount) (:type :leaf)
                      |j $ {} (:at 1572086730754) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1572086731349) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                          |L $ {} (:at 1572086731782) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1572086732615) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1572086733624) (:by |rJoDgvdeG) (:text |x0) (:type :leaf)
                                  |j $ {} (:at 1572086734358) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1572086734358) (:by |rJoDgvdeG) (:text |js/Math.random) (:type :leaf)
                          |j $ {} (:at 1572086743497) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1584720182535) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                              |T $ {} (:at 1572086744295) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                              |j $ {} (:at 1572086747755) (:by |rJoDgvdeG) (:text "|\"Stored") (:type :leaf)
                              |r $ {} (:at 1572086749463) (:by |rJoDgvdeG) (:text |x0) (:type :leaf)
                          |r $ {} (:at 1619539324128) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1572086750609) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1572086751544) (:by |rJoDgvdeG) (:text |:update) (:type :leaf)
                      |j $ {} (:at 1572086751819) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1584720178072) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                          |T $ {} (:at 1572086755689) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                          |j $ {} (:at 1572086756916) (:by |rJoDgvdeG) (:text "|\"read") (:type :leaf)
                      |r $ {} (:at 1619539168024) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1572086765428) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1572086766906) (:by |rJoDgvdeG) (:text |:unmount) (:type :leaf)
                      |j $ {} (:at 1572086770977) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1584720180800) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                          |T $ {} (:at 1584720180308) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                          |j $ {} (:at 1572086770977) (:by |rJoDgvdeG) (:text "|\"read") (:type :leaf)
                      |r $ {} (:at 1619539170693) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
          |style-done $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651180825590) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-done) (:type :leaf)
              |r $ {} (:at 1651180822430) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1651180832034) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1651180832722) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1651180835478) (:by |rJoDgvdeG) (:text "|\"$0") (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:width) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |32) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:height) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |32) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:outline) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:none) (:type :leaf)
                          |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:border) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:none) (:type :leaf)
                          |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:vertical-align) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:middle) (:type :leaf)
          |style-task $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-task) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:display) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:flex) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:padding) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text "||4px 0px") (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.task) (:type :leaf)
            |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |b $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540830039824) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1508915091929) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                        |v $ {} (:at 1504774121421) (:by |root) (:text |input) (:type :leaf)
                        |x $ {} (:at 1504774121421) (:by |root) (:text |span) (:type :leaf)
                        |y $ {} (:at 1504774121421) (:by |root) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1504774121421) (:by |root) (:text |<>) (:type :leaf)
                        |yv $ {} (:at 1571586991762) (:by |rJoDgvdeG) (:text |defeffect) (:type :leaf)
                |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1610031661069) (:by |rJoDgvdeG) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |=<) (:type :leaf)
                |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |comp-inspect) (:type :leaf)
                |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.style.widget) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by |root) (:text |widget) (:type :leaf)
                |z $ {} (:at 1651180811864) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651180814417) (:by |rJoDgvdeG) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1651180816493) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651180816793) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651180818894) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.app.comp.todolist $ {}
        :defs $ {}
          |comp-todolist $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1536678904198) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |comp-todolist) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |states) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584718933236) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584718934262) (:by |rJoDgvdeG) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1584872700149) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610211668152) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                              |T $ {} (:at 1584718934490) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584718936300) (:by |rJoDgvdeG) (:text |:cursor) (:type :leaf)
                                  |j $ {} (:at 1584718936996) (:by |rJoDgvdeG) (:text |states) (:type :leaf)
                              |j $ {} (:at 1584872701364) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584872702117) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |state) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610211670068) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |states) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |initial-state) (:type :leaf)
                  |r $ {} (:at 1571574450097) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1571574450942) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                      |L $ {} (:at 1571574456411) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571574459596) (:by |rJoDgvdeG) (:text |effect-focus) (:type :leaf)
                      |f $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |style-root) (:type :leaf)
                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-inspect) (:type :leaf)
                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text ||States) (:type :leaf)
                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |state) (:type :leaf)
                              |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:left) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text ||80px) (:type :leaf)
                          |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |style-panel) (:type :leaf)
                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |input) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:placeholder) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text "|\"Text") (:type :leaf)
                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:value) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:draft) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |state) (:type :leaf)
                                      |t $ {} (:at 1651181086495) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651181091202) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                                          |b $ {} (:at 1651181093107) (:by |rJoDgvdeG) (:text |widget/style-input) (:type :leaf)
                                      |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:width) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |&max) (:type :leaf)
                                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |200) (:type :leaf)
                                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |+) (:type :leaf)
                                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |24) (:type :leaf)
                                                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |text-width) (:type :leaf)
                                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:draft) (:type :leaf)
                                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |state) (:type :leaf)
                                                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |16) (:type :leaf)
                                                              |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text ||BlinkMacSystemFont) (:type :leaf)
                                      |x $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-input) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |state) (:type :leaf)
                                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:draft) (:type :leaf)
                                                      |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:value) (:type :leaf)
                                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                      |y $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-focus) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |on-focus) (:type :leaf)
                              |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1621412996120) (:by |rJoDgvdeG) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                      |n $ {} (:at 1651175827683) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651175830269) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                                          |b $ {} (:at 1651176756747) (:by |rJoDgvdeG) (:text |widget/style-button) (:type :leaf)
                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:add) (:type :leaf)
                                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:draft) (:type :leaf)
                                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |state) (:type :leaf)
                                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:draft) (:type :leaf)
                                                      |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text ||) (:type :leaf)
                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |span) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:inner-text) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text "|\"Add") (:type :leaf)
                              |y $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1621413802208) (:by |rJoDgvdeG) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                              |yT $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text ||Clear) (:type :leaf)
                                      |r $ {} (:at 1651178815442) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651178815442) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                                          |b $ {} (:at 1651178815442) (:by |rJoDgvdeG) (:text |widget/style-button) (:type :leaf)
                                      |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:clear) (:type :leaf)
                                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                              |yj $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                              |yr $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1651178817288) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651178817288) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                                              |b $ {} (:at 1651178817288) (:by |rJoDgvdeG) (:text |widget/style-button) (:type :leaf)
                                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |on-test) (:type :leaf)
                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text "||heavy tasks") (:type :leaf)
                                          |n $ {} (:at 1651251922260) (:by |rJoDgvdeG) (:text |css-bold) (:type :leaf)
                          |x $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |list->) (:type :leaf)
                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text ||task-list) (:type :leaf)
                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |style-list) (:type :leaf)
                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1619540196513) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                  |b $ {} (:at 1619540203781) (:by |rJoDgvdeG) (:text |tasks) (:type :leaf)
                                  |f $ {} (:at 1645978993302) (:by |rJoDgvdeG) (:text |.to-list) (:type :leaf)
                                  |r $ {} (:at 1623693595033) (:by |rJoDgvdeG) (:text |.reverse) (:type :leaf)
                                  |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |task) (:type :leaf)
                                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |task-id) (:type :leaf)
                                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |task) (:type :leaf)
                                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1628273063112) (:by |rJoDgvdeG) (:text |task-id) (:type :leaf)
                                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1625825825971) (:by |rJoDgvdeG) (:text |memof-call) (:type :leaf)
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-task) (:type :leaf)
                                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |>>) (:type :leaf)
                                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |states) (:type :leaf)
                                                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |task-id) (:type :leaf)
                                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |task) (:type :leaf)
                          |y $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |>) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |tasks) (:type :leaf)
                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:spell-check) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |style-toolbar) (:type :leaf)
                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |widget/button) (:type :leaf)
                                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610291519635) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                                  |j $ {} (:at 1610291520211) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1610291520818) (:by |rJoDgvdeG) (:text |not) (:type :leaf)
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:locked?) (:type :leaf)
                                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |state) (:type :leaf)
                                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:clear) (:type :leaf)
                                                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text ||Clear2) (:type :leaf)
                                  |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |8) (:type :leaf)
                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                                  |x $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |widget/button) (:type :leaf)
                                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |update) (:type :leaf)
                                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:locked?) (:type :leaf)
                                                          |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |not) (:type :leaf)
                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |<>) (:type :leaf)
                                          |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651251976345) (:by |rJoDgvdeG) (:text |str-spaced) (:type :leaf)
                                              |j $ {} (:at 1651251974652) (:by |rJoDgvdeG) (:text ||Lock?) (:type :leaf)
                                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:locked?) (:type :leaf)
                                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |state) (:type :leaf)
                                          |n $ {} (:at 1651251978587) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651251978892) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                              |b $ {} (:at 1651251979148) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1651251985187) (:by |rJoDgvdeG) (:text |:font-size) (:type :leaf)
                                                  |b $ {} (:at 1651251988594) (:by |rJoDgvdeG) (:text |13) (:type :leaf)
                                  |y $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |8) (:type :leaf)
                                      |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                                  |yT $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-wrap) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-zero) (:type :leaf)
                          |yT $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-inspect) (:type :leaf)
                              |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text ||Tasks) (:type :leaf)
                              |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |tasks) (:type :leaf)
                              |v $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:left) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |500) (:type :leaf)
                                  |r $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |:top) (:type :leaf)
                                      |j $ {} (:at 1610203915704) (:by |rJoDgvdeG) (:text |20) (:type :leaf)
          |css-bold $ {} (:at 1651251923461) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651251926479) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1651251923461) (:by |rJoDgvdeG) (:text |css-bold) (:type :leaf)
              |h $ {} (:at 1651251923461) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651251935862) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1651251936490) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651251937925) (:by |rJoDgvdeG) (:text "|\"$0") (:type :leaf)
                      |b $ {} (:at 1651251938261) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651251938552) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1651251939228) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651251941382) (:by |rJoDgvdeG) (:text |:font-weight) (:type :leaf)
                              |b $ {} (:at 1651251942383) (:by |rJoDgvdeG) (:text |:bold) (:type :leaf)
          |effect-focus $ {} (:at 1571574470979) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1571574484158) (:by |rJoDgvdeG) (:text |defeffect) (:type :leaf)
              |j $ {} (:at 1571574470979) (:by |rJoDgvdeG) (:text |effect-focus) (:type :leaf)
              |r $ {} (:at 1571574470979) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
              |x $ {} (:at 1571574488737) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1571574491586) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                  |r $ {} (:at 1571574495520) (:by |rJoDgvdeG) (:text |parent) (:type :leaf)
                  |v $ {} (:at 1594556638235) (:by |rJoDgvdeG) (:text |at-place?) (:type :leaf)
              |y $ {} (:at 1571847133611) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571847139132) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                  |j $ {} (:at 1571847149555) (:by |rJoDgvdeG) (:text "|\"todolist effect:") (:type :leaf)
                  |r $ {} (:at 1571935522848) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
          |initial-state $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |initial-state) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:draft) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:locked?) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |false) (:type :leaf)
          |number-order $ {} (:at 1612347200111) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1612347201936) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1612347200111) (:by |rJoDgvdeG) (:text |number-order) (:type :leaf)
              |r $ {} (:at 1612347200111) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612347206935) (:by |rJoDgvdeG) (:text |a) (:type :leaf)
                  |j $ {} (:at 1612347207259) (:by |rJoDgvdeG) (:text |b) (:type :leaf)
              |v $ {} (:at 1612347207903) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612347211272) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |j $ {} (:at 1612347212106) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612347216078) (:by |rJoDgvdeG) (:text |&<) (:type :leaf)
                      |j $ {} (:at 1612347216397) (:by |rJoDgvdeG) (:text |a) (:type :leaf)
                      |r $ {} (:at 1612347216762) (:by |rJoDgvdeG) (:text |b) (:type :leaf)
                  |r $ {} (:at 1612347219234) (:by |rJoDgvdeG) (:text |-1) (:type :leaf)
                  |v $ {} (:at 1612347220020) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612347220816) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                      |j $ {} (:at 1612347223270) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612347225021) (:by |rJoDgvdeG) (:text |&>) (:type :leaf)
                          |j $ {} (:at 1612347225724) (:by |rJoDgvdeG) (:text |a) (:type :leaf)
                          |r $ {} (:at 1612347226440) (:by |rJoDgvdeG) (:text |b) (:type :leaf)
                      |r $ {} (:at 1612347227687) (:by |rJoDgvdeG) (:text |1) (:type :leaf)
                      |v $ {} (:at 1612347229450) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
          |on-focus $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |on-focus) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |e) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |dispatch!) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text "||Just focused~") (:type :leaf)
          |on-test $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |on-test) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |e) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |dispatch!) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text "||trigger test!") (:type :leaf)
              |y $ {} (:at 1509168148061) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1647337832928) (:by |rJoDgvdeG) (:text |try-test!) (:type :leaf)
                  |j $ {} (:at 1509168150129) (:by |root) (:text |dispatch!) (:type :leaf)
                  |r $ {} (:at 1509168426017) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1509168426291) (:by |root) (:text |[]) (:type :leaf)
          |style-list $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-list) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:black) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:background-color) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |120) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |20) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by |root) (:text |98) (:type :leaf)
          |style-panel $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-panel) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:display) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:flex) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:margin-bottom) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |4) (:type :leaf)
          |style-root $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-root) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:black) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:background-color) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |120) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |20) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by |root) (:text |98) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:line-height) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||24px) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1549948863953) (:by |rJoDgvdeG) (:text "|\"font-size") (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |16) (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:padding) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |10) (:type :leaf)
                  |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:font-family) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text "||\"微软雅黑\", Verdana") (:type :leaf)
          |style-toolbar $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-toolbar) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:display) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:flex) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:flex-direction) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:row) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:justify-content) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:start) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:padding) (:type :leaf)
                      |j $ {} (:at 1540830107261) (:by |root) (:text "|\"4px 0") (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:white-space) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:nowrap) (:type :leaf)
          |try-test! $ {} (:at 1509168137711) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1509168140715) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1647337830172) (:by |rJoDgvdeG) (:text |try-test!) (:type :leaf)
              |n $ {} (:at 1509168141638) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1509168221837) (:by |root) (:text |dispatch!) (:type :leaf)
                  |j $ {} (:at 1509168431012) (:by |root) (:text |acc) (:type :leaf)
              |r $ {} (:at 1509168137711) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1509168137711) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1509168137711) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1509168137711) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:text |started) (:type :leaf)
                          |j $ {} (:at 1647337792089) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1647337792089) (:by |rJoDgvdeG) (:text |js/Date.now) (:type :leaf)
                  |n $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |dispatch!) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:clear) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1509168137711) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1509168137711) (:by |root) (:text |loop) (:type :leaf)
                      |j $ {} (:at 1510373650726) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1509168137711) (:by |root) (:text |x) (:type :leaf)
                              |r $ {} (:at 1623584447767) (:by |rJoDgvdeG) (:text |20) (:type :leaf)
                      |r $ {} (:at 1509168137711) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:text |dispatch!) (:type :leaf)
                          |j $ {} (:at 1509168137711) (:by |root) (:text |:add) (:type :leaf)
                          |r $ {} (:at 1509168137711) (:by |root) (:text ||empty) (:type :leaf)
                      |v $ {} (:at 1509168137711) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:text |if) (:type :leaf)
                          |j $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509168137711) (:by |root) (:text |>) (:type :leaf)
                              |j $ {} (:at 1509168137711) (:by |root) (:text |x) (:type :leaf)
                              |r $ {} (:at 1509168137711) (:by |root) (:text |0) (:type :leaf)
                          |r $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509168137711) (:by |root) (:text |recur) (:type :leaf)
                              |j $ {} (:at 1509168137711) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1509168137711) (:by |root) (:text |dec) (:type :leaf)
                                  |j $ {} (:at 1509168137711) (:by |root) (:text |x) (:type :leaf)
                  |v $ {} (:at 1509168137711) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1509168137711) (:by |root) (:text |loop) (:type :leaf)
                      |j $ {} (:at 1510373648352) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1509168137711) (:by |root) (:text |x) (:type :leaf)
                              |r $ {} (:at 1611312933529) (:by |rJoDgvdeG) (:text |20) (:type :leaf)
                      |r $ {} (:at 1509168137711) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:text |dispatch!) (:type :leaf)
                          |j $ {} (:at 1509168137711) (:by |root) (:text |:hit-first) (:type :leaf)
                          |r $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636117442627) (:by |rJoDgvdeG) (:text |js/Math.random) (:type :leaf)
                      |v $ {} (:at 1509168137711) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:text |if) (:type :leaf)
                          |j $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509168137711) (:by |root) (:text |>) (:type :leaf)
                              |j $ {} (:at 1509168137711) (:by |root) (:text |x) (:type :leaf)
                              |r $ {} (:at 1509168137711) (:by |root) (:text |0) (:type :leaf)
                          |r $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509168137711) (:by |root) (:text |recur) (:type :leaf)
                              |j $ {} (:at 1509168137711) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1509168137711) (:by |root) (:text |dec) (:type :leaf)
                                  |j $ {} (:at 1509168137711) (:by |root) (:text |x) (:type :leaf)
                  |x $ {} (:at 1509168137711) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1509168137711) (:by |root) (:text |dispatch!) (:type :leaf)
                      |j $ {} (:at 1509168137711) (:by |root) (:text |:clear) (:type :leaf)
                      |r $ {} (:at 1509168137711) (:by |root) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1509168137711) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1509168137711) (:by |root) (:text |loop) (:type :leaf)
                      |j $ {} (:at 1510373654172) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1509168137711) (:by |root) (:text |x) (:type :leaf)
                              |r $ {} (:at 1611312951431) (:by |rJoDgvdeG) (:text |10) (:type :leaf)
                      |r $ {} (:at 1509168137711) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:text |dispatch!) (:type :leaf)
                          |j $ {} (:at 1509168137711) (:by |root) (:text |:add) (:type :leaf)
                          |r $ {} (:at 1509168137711) (:by |root) (:text "||only 10 items") (:type :leaf)
                      |v $ {} (:at 1509168137711) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168137711) (:by |root) (:text |if) (:type :leaf)
                          |j $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509168137711) (:by |root) (:text |>) (:type :leaf)
                              |j $ {} (:at 1509168137711) (:by |root) (:text |x) (:type :leaf)
                              |r $ {} (:at 1509168137711) (:by |root) (:text |0) (:type :leaf)
                          |r $ {} (:at 1509168137711) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509168137711) (:by |root) (:text |recur) (:type :leaf)
                              |j $ {} (:at 1509168137711) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1509168137711) (:by |root) (:text |dec) (:type :leaf)
                                  |j $ {} (:at 1509168137711) (:by |root) (:text |x) (:type :leaf)
                  |yj $ {} (:at 1509168454003) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1509168454759) (:by |root) (:text |let) (:type :leaf)
                      |L $ {} (:at 1509168455004) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1509168455590) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509168456193) (:by |root) (:text |cost) (:type :leaf)
                              |j $ {} (:at 1509168137711) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1509168137711) (:by |root) (:text |-) (:type :leaf)
                                  |f $ {} (:at 1647337793847) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647337793847) (:by |rJoDgvdeG) (:text |js/Date.now) (:type :leaf)
                                  |r $ {} (:at 1509168137711) (:by |root) (:text |started) (:type :leaf)
                      |T $ {} (:at 1509168186760) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1509168187694) (:by |root) (:text |if) (:type :leaf)
                          |L $ {} (:at 1509168192591) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1509168440280) (:by |root) (:text |<) (:type :leaf)
                              |L $ {} (:at 1509168435561) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1509168435203) (:by |root) (:text |count) (:type :leaf)
                                  |j $ {} (:at 1509168438004) (:by |root) (:text |acc) (:type :leaf)
                              |T $ {} (:at 1623584942046) (:by |rJoDgvdeG) (:text |40) (:type :leaf)
                          |T $ {} (:at 1509168181449) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509168183634) (:by |root) (:text |js/setTimeout) (:type :leaf)
                              |b $ {} (:at 1509168200951) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1509168201003) (:by |root) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1509168202162) (:by |root) (:type :expr)
                                    :data $ {}
                                  |r $ {} (:at 1509168204270) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647337825043) (:by |rJoDgvdeG) (:text |try-test!) (:type :leaf)
                                      |j $ {} (:at 1509168214335) (:by |root) (:text |dispatch!) (:type :leaf)
                                      |r $ {} (:at 1509168478201) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1509168478710) (:by |root) (:text |conj) (:type :leaf)
                                          |j $ {} (:at 1509168514886) (:by |root) (:text |acc) (:type :leaf)
                                          |r $ {} (:at 1509168485475) (:by |root) (:text |cost) (:type :leaf)
                              |j $ {} (:at 1509168535016) (:by |root) (:text |0) (:type :leaf)
                          |j $ {} (:at 1509168487516) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1509168739638) (:by |root) (:text |println) (:type :leaf)
                              |j $ {} (:at 1509168497610) (:by |root) (:text ||result:) (:type :leaf)
                              |r $ {} (:at 1509168498404) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1509168498959) (:by |root) (:text |sort) (:type :leaf)
                                  |j $ {} (:at 1509168501346) (:by |root) (:text |acc) (:type :leaf)
                                  |r $ {} (:at 1619542668898) (:by |rJoDgvdeG) (:text |number-order) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.todolist) (:type :leaf)
            |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |n $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540830028210) (:by |root) (:text |respo.core) (:type :leaf)
                    |j $ {} (:at 1508915101761) (:by |root) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
                        |j $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |span) (:type :leaf)
                        |v $ {} (:at 1504774121421) (:by |root) (:text |input) (:type :leaf)
                        |w $ {} (:at 1505215173770) (:by |root) (:text |<>) (:type :leaf)
                        |yT $ {} (:at 1509035192092) (:by |root) (:text |list->) (:type :leaf)
                        |yv $ {} (:at 1571574481109) (:by |rJoDgvdeG) (:text |defeffect) (:type :leaf)
                        |yx $ {} (:at 1584719016462) (:by |rJoDgvdeG) (:text |>>) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1610031288087) (:by |rJoDgvdeG) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.task) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |comp-task) (:type :leaf)
                |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |=<) (:type :leaf)
                |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |comp-inspect) (:type :leaf)
                |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.zero) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |comp-zero) (:type :leaf)
                |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.wrap) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |comp-wrap) (:type :leaf)
                |yv $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1511713157059) (:by |rJoDgvdeG) (:text |respo.util.dom) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1511713175666) (:by |rJoDgvdeG) (:text |text-width) (:type :leaf)
                |yx $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.style.widget) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by |root) (:text |widget) (:type :leaf)
                |yy $ {} (:at 1611826225931) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1611826229016) (:by |rJoDgvdeG) (:text |memof.alias) (:type :leaf)
                    |r $ {} (:at 1611826229767) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1611826229963) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1611826232384) (:by |rJoDgvdeG) (:text |memof-call) (:type :leaf)
                |z $ {} (:at 1651251929266) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651251931078) (:by |rJoDgvdeG) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1651251932029) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651251932285) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651251933338) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.app.comp.wrap $ {}
        :defs $ {}
          |comp-wrap $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |comp-wrap) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.wrap) (:type :leaf)
            |v $ {} (:at 1505301328166) (:by |root) (:type :expr)
              :data $ {}
                |T $ {} (:at 1505301331033) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540830069322) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1508915113987) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.app.comp.zero $ {}
        :defs $ {}
          |comp-zero $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |comp-zero) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:inner-text) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.zero) (:type :leaf)
            |v $ {} (:at 1505301334158) (:by |root) (:type :expr)
              :data $ {}
                |T $ {} (:at 1505301334988) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540830062992) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1508915128682) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.app.core $ {}
        :defs $ {}
          |*store $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610186359045) (:by |rJoDgvdeG) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |*store) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by |root) (:text |schema/store) (:type :leaf)
          |dispatch! $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |L $ {} (:at 1623599499802) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                  |v $ {} (:at 1584720061550) (:by |rJoDgvdeG) (:text |op-data) (:type :leaf)
              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |updater) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |@*store) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                              |v $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                              |x $ {} (:at 1584871619734) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1647338017838) (:by |rJoDgvdeG) (:text |generate-id!) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |*store) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
          |handle-ssr! $ {} (:at 1529814786924) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1529814786924) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1529814786924) (:by |root) (:text |handle-ssr!) (:type :leaf)
              |r $ {} (:at 1529814786924) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1529814839976) (:by |root) (:text |mount-target) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1529814684031) (:by |root) (:text |realize-ssr!) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |@*store) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |dispatch!) (:type :leaf)
          |render-app! $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |mount-target) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1611849029556) (:by |rJoDgvdeG) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |@*store) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |dispatch!) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.core) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1504774121421) (:by |root) (:text |respo.app.comp.container) (:type :leaf)
                    |j $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1504774121421) (:by |root) (:text |comp-container) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1504774121421) (:by |root) (:text |respo.core) (:type :leaf)
                    |j $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1504774121421) (:by |root) (:text |render!) (:type :leaf)
                        |j $ {} (:at 1612763768898) (:by |rJoDgvdeG) (:text |realize-ssr!) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1504774121421) (:by |root) (:text |respo.app.schema) (:type :leaf)
                    |j $ {} (:at 1504774121421) (:by |root) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |schema) (:type :leaf)
                |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1571567296220) (:by |rJoDgvdeG) (:text |respo.app.updater) (:type :leaf)
                    |j $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1504774121421) (:by |root) (:text |updater) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.app.schema $ {}
        :defs $ {}
          |store $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:tasks) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |[]) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |v $ {} (:at 1584717665248) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1584717667420) (:by |rJoDgvdeG) (:text |:cursor) (:type :leaf)
                      |j $ {} (:at 1584717667697) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584717667935) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
          |task $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:done?) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |false) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.schema) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.app.style.widget $ {}
        :defs $ {}
          |button $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |button) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:display) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:inline-block) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:padding) (:type :leaf)
                      |j $ {} (:at 1571551542606) (:by |rJoDgvdeG) (:text "|\"0 6px 0 6px") (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:font-family) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||Avenir,Verdana) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:cursor) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:pointer) (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:background-color) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |80) (:type :leaf)
                          |v $ {} (:at 1651178104512) (:by |rJoDgvdeG) (:text |70.9) (:type :leaf)
                  |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by |root) (:text |100) (:type :leaf)
                  |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:height) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |28) (:type :leaf)
                  |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:line-height) (:type :leaf)
                      |j $ {} (:at 1571551548528) (:by |rJoDgvdeG) (:text "|\"28px") (:type :leaf)
                  |z $ {} (:at 1651176934838) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651178868410) (:by |rJoDgvdeG) (:text |:transition-duration) (:type :leaf)
                      |b $ {} (:at 1651178874308) (:by |rJoDgvdeG) (:text "|\"200ms") (:type :leaf)
          |style-button $ {} (:at 1651175842232) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651175844155) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1651176664862) (:by |rJoDgvdeG) (:text |style-button) (:type :leaf)
              |h $ {} (:at 1651175842232) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651175846889) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1651175847197) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651175850902) (:by |rJoDgvdeG) (:text "|\"$0") (:type :leaf)
                      |b $ {} (:at 1651176705567) (:by |rJoDgvdeG) (:text |button) (:type :leaf)
                  |h $ {} (:at 1651176771327) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651176775569) (:by |rJoDgvdeG) (:text "|\"$0:hover") (:type :leaf)
                      |b $ {} (:at 1651176781248) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651176781606) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1651176781971) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651176784286) (:by |rJoDgvdeG) (:text |:transform) (:type :leaf)
                              |b $ {} (:at 1651176923597) (:by |rJoDgvdeG) (:text "|\"scale(1.04)") (:type :leaf)
          |style-input $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651181023030) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
              |j $ {} (:at 1651181020406) (:by |rJoDgvdeG) (:text |style-input) (:type :leaf)
              |r $ {} (:at 1651181031002) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1651181031867) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1651181033641) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1651181035916) (:by |rJoDgvdeG) (:text "|\"$0") (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:font-size) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text ||16px) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:line-height) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text ||24px) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:padding) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text "||0px 8px") (:type :leaf)
                          |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:outline) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:none) (:type :leaf)
                          |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:min-width) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text ||300px) (:type :leaf)
                          |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:background-color) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |94) (:type :leaf)
                          |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:border) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:none) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.style.widget) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1610031345886) (:by |rJoDgvdeG) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                |n $ {} (:at 1651176727189) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651176727189) (:by |rJoDgvdeG) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1651176727189) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651176727189) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651176727189) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |updater) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op-type) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |op-id) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |L $ {} (:at 1610291648197) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |op-type) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1643704320846) (:by |rJoDgvdeG) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op-type) (:type :leaf)
                  |n $ {} (:at 1643704321706) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1643704325451) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                      |b $ {} (:at 1643704325739) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1643704327328) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                          |j $ {} (:at 1643704332832) (:by |rJoDgvdeG) (:text "|\"Unknown op") (:type :leaf)
                          |r $ {} (:at 1643704336062) (:by |rJoDgvdeG) (:text |op-type) (:type :leaf)
                      |j $ {} (:at 1643704321706) (:by |rJoDgvdeG) (:text |store) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:states) (:type :leaf)
                      |r $ {} (:at 1584871897159) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874759470) (:by |rJoDgvdeG) (:text |update-states) (:type :leaf)
                          |j $ {} (:at 1584871899631) (:by |rJoDgvdeG) (:text |store) (:type :leaf)
                          |r $ {} (:at 1584871901297) (:by |rJoDgvdeG) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:add) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |update) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |:tasks) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |conj) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
                                  |v $ {} (:at 1584719381815) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584719382396) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1584719382680) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1584719383870) (:by |rJoDgvdeG) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1584719384757) (:by |rJoDgvdeG) (:text |op-data) (:type :leaf)
                                      |r $ {} (:at 1584719385270) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1584719385873) (:by |rJoDgvdeG) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1584719386694) (:by |rJoDgvdeG) (:text |op-id) (:type :leaf)
                                      |v $ {} (:at 1584719387463) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1584719388784) (:by |rJoDgvdeG) (:text |:done?) (:type :leaf)
                                          |j $ {} (:at 1584719389569) (:by |rJoDgvdeG) (:text |false) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:remove) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |update) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |:tasks) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1619541687670) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610212234442) (:by |rJoDgvdeG) (:text |filter) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |=) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:id) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:clear) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |assoc) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |:tasks) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |[]) (:type :leaf)
                  |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:update) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |update) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |:tasks) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |task-id) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |:id) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |text) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |:text) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1619541690678) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610212398778) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |=) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1504774121421) (:by |root) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |task-id) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |assoc) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |:text) (:type :leaf)
                                                      |v $ {} (:at 1504774121421) (:by |root) (:text |text) (:type :leaf)
                                                  |v $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                  |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:hit-first) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |->) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |update-in) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |:tasks) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |:text) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                  |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:toggle) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |update) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |store) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |:tasks) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |task-id) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1619541692706) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610212400568) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |=) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1504774121421) (:by |root) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |task-id) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |update) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |:done?) (:type :leaf)
                                                      |v $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                                  |v $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.app.updater) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1584871894046) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1584871894046) (:by |rJoDgvdeG) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1584871894046) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1584871894046) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1584874768040) (:by |rJoDgvdeG) (:text |update-states) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.comp.global-keydown $ {}
        :configs $ {}
        :defs $ {}
          |comp-global-keydown $ {} (:at 1656036144286) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1656036190230) (:by |rJoDgvdeG) (:text |defcomp) (:type :leaf)
              |b $ {} (:at 1656036144286) (:by |rJoDgvdeG) (:text |comp-global-keydown) (:type :leaf)
              |h $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1656036769137) (:by |rJoDgvdeG) (:text |options) (:type :leaf)
                  |T $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |on-event) (:type :leaf)
              |j $ {} (:at 1656037173503) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656037174246) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |b $ {} (:at 1656037175011) (:by |rJoDgvdeG) (:text "|\"dirty solution: proxy window keydown event to a `<span/>`, comes with some restrictions. however Respo does not allow effects to modify states.") (:type :leaf)
              |l $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                  |b $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |effect-listen-keyboard) (:type :leaf)
                      |b $ {} (:at 1656036788322) (:by |rJoDgvdeG) (:text |options) (:type :leaf)
                  |h $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |span) (:type :leaf)
                      |b $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |:on-keydown) (:type :leaf)
                              |b $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                  |b $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                      |b $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                                  |h $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |on-event) (:type :leaf)
                                      |b $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                      |h $ {} (:at 1656036187991) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
          |dirty-field $ {} (:at 1656036533964) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1656036533964) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |b $ {} (:at 1656036533964) (:by |rJoDgvdeG) (:text |dirty-field) (:type :leaf)
              |h $ {} (:at 1656036535385) (:by |rJoDgvdeG) (:text "|\"_global_listener") (:type :leaf)
          |effect-listen-keyboard $ {} (:at 1656036153685) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1656036169300) (:by |rJoDgvdeG) (:text |defeffect) (:type :leaf)
              |b $ {} (:at 1656036153685) (:by |rJoDgvdeG) (:text |effect-listen-keyboard) (:type :leaf)
              |e $ {} (:at 1656036666042) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656036793640) (:by |rJoDgvdeG) (:text |options) (:type :leaf)
              |h $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                  |b $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:text |el) (:type :leaf)
                  |h $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:text |at?) (:type :leaf)
              |l $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1656036429538) (:by |rJoDgvdeG) (:text |cond) (:type :leaf)
                  |l $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1656036615748) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1656036616461) (:by |rJoDgvdeG) (:text |or) (:type :leaf)
                          |T $ {} (:at 1656036432168) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |5 $ {} (:at 1656036434323) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                              |D $ {} (:at 1656036432799) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                              |T $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:text |:mount) (:type :leaf)
                          |b $ {} (:at 1656036432168) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |5 $ {} (:at 1656036434323) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                              |D $ {} (:at 1656036432799) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                              |T $ {} (:at 1656036620963) (:by |rJoDgvdeG) (:text |:update) (:type :leaf)
                      |b $ {} (:at 1656036342924) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1656036343643) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                          |T $ {} (:at 1656036344914) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1656036795263) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656036797307) (:by |rJoDgvdeG) (:text |disabled-commands) (:type :leaf)
                                  |b $ {} (:at 1656036997514) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1656036999249) (:by |rJoDgvdeG) (:text |noted) (:type :leaf)
                                      |L $ {} (:at 1656037181165) (:by |rJoDgvdeG) (:text "|\"copied event does not support `event.preventDefault()`, so we need to pass a set of configs") (:type :leaf)
                                      |T $ {} (:at 1656036813445) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1656036814442) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                                          |T $ {} (:at 1656036798068) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1656036798478) (:by |rJoDgvdeG) (:text |:disabled-commands) (:type :leaf)
                                              |b $ {} (:at 1656036800392) (:by |rJoDgvdeG) (:text |options) (:type :leaf)
                                          |b $ {} (:at 1656036816582) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1656036819522) (:by |rJoDgvdeG) (:text |#{}) (:type :leaf)
                                              |b $ {} (:at 1656036820240) (:by |rJoDgvdeG) (:text "|\"p") (:type :leaf)
                                              |h $ {} (:at 1656036820815) (:by |rJoDgvdeG) (:text "|\"s") (:type :leaf)
                              |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |handler) (:type :leaf)
                                  |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                      |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                                      |h $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                          |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                                              |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1656036847673) (:by |rJoDgvdeG) (:text |.includes?) (:type :leaf)
                                                  |X $ {} (:at 1656036831886) (:by |rJoDgvdeG) (:text |disabled-commands) (:type :leaf)
                                                  |Z $ {} (:at 1656036835569) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1656036835569) (:by |rJoDgvdeG) (:text |.-key) (:type :leaf)
                                                      |b $ {} (:at 1656036835569) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                                              |h $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |or) (:type :leaf)
                                                  |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |.-ctrlKey) (:type :leaf)
                                                      |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                                                  |h $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |.-metaKey) (:type :leaf)
                                                      |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                                          |h $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |.!preventDefault) (:type :leaf)
                                              |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                                      |l $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |.!dispatchEvent) (:type :leaf)
                                          |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |el) (:type :leaf)
                                          |h $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |new) (:type :leaf)
                                              |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |js/KeyboardEvent) (:type :leaf)
                                              |h $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |.-type) (:type :leaf)
                                                  |b $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                                              |l $ {} (:at 1656036336104) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                          |V $ {} (:at 1656036929853) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656036932294) (:by |rJoDgvdeG) (:text |if-let) (:type :leaf)
                              |b $ {} (:at 1656036932819) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656036938571) (:by |rJoDgvdeG) (:text |prev-listener) (:type :leaf)
                                  |b $ {} (:at 1656036943649) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1656036943649) (:by |rJoDgvdeG) (:text |aget) (:type :leaf)
                                      |b $ {} (:at 1656036943649) (:by |rJoDgvdeG) (:text |el) (:type :leaf)
                                      |h $ {} (:at 1656036943649) (:by |rJoDgvdeG) (:text |dirty-field) (:type :leaf)
                              |h $ {} (:at 1656036949028) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656036949028) (:by |rJoDgvdeG) (:text |js/window.removeEventListener) (:type :leaf)
                                  |b $ {} (:at 1656036949028) (:by |rJoDgvdeG) (:text "|\"keydown") (:type :leaf)
                                  |h $ {} (:at 1656036950215) (:by |rJoDgvdeG) (:text |prev-listener) (:type :leaf)
                          |X $ {} (:at 1656036352218) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656036507411) (:by |rJoDgvdeG) (:text |aset) (:type :leaf)
                              |e $ {} (:at 1656036352218) (:by |rJoDgvdeG) (:text |el) (:type :leaf)
                              |f $ {} (:at 1656036533537) (:by |rJoDgvdeG) (:text |dirty-field) (:type :leaf)
                              |h $ {} (:at 1656036352218) (:by |rJoDgvdeG) (:text |handler) (:type :leaf)
                          |b $ {} (:at 1656036348120) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656036348120) (:by |rJoDgvdeG) (:text |js/window.addEventListener) (:type :leaf)
                              |b $ {} (:at 1656036348120) (:by |rJoDgvdeG) (:text "|\"keydown") (:type :leaf)
                              |h $ {} (:at 1656036348120) (:by |rJoDgvdeG) (:text |handler) (:type :leaf)
                  |o $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1656036441586) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1656036442167) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                          |L $ {} (:at 1656036444687) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                          |T $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:text |:unmount) (:type :leaf)
                      |b $ {} (:at 1656036361484) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1656036362651) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                          |L $ {} (:at 1656036365733) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656036363482) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1656036363482) (:by |rJoDgvdeG) (:text |handler) (:type :leaf)
                                  |b $ {} (:at 1656036368361) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1656036540239) (:by |rJoDgvdeG) (:text |aget) (:type :leaf)
                                      |b $ {} (:at 1656036368361) (:by |rJoDgvdeG) (:text |el) (:type :leaf)
                                      |h $ {} (:at 1656036542716) (:by |rJoDgvdeG) (:text |dirty-field) (:type :leaf)
                          |T $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:text |js/window.removeEventListener) (:type :leaf)
                              |b $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:text "|\"keydown") (:type :leaf)
                              |h $ {} (:at 1656036165980) (:by |rJoDgvdeG) (:text |handler) (:type :leaf)
                          |b $ {} (:at 1656036372076) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1656036548534) (:by |rJoDgvdeG) (:text |aset) (:type :leaf)
                              |b $ {} (:at 1656036372076) (:by |rJoDgvdeG) (:text |el) (:type :leaf)
                              |e $ {} (:at 1656036551265) (:by |rJoDgvdeG) (:text |dirty-field) (:type :leaf)
                              |h $ {} (:at 1656036374628) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |q $ {} (:at 1656036445644) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1656036446965) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                      |b $ {} (:at 1656036447507) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1656036112806) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1656036112806) (:by |rJoDgvdeG) (:text |ns) (:type :leaf)
            |b $ {} (:at 1656036112806) (:by |rJoDgvdeG) (:text |respo.comp.global-keydown) (:type :leaf)
            |h $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |:require) (:type :leaf)
                |h $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |respo.core) (:type :leaf)
                    |b $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |defcomp) (:type :leaf)
                        |b $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |defeffect) (:type :leaf)
                        |h $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |<>) (:type :leaf)
                        |l $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |>>) (:type :leaf)
                        |o $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                        |q $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |button) (:type :leaf)
                        |s $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |textarea) (:type :leaf)
                        |t $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |span) (:type :leaf)
                        |u $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |input) (:type :leaf)
                        |v $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |a) (:type :leaf)
                        |w $ {} (:at 1656036197488) (:by |rJoDgvdeG) (:text |list->) (:type :leaf)
      |respo.comp.inspect $ {}
        :defs $ {}
          |comp-inspect $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |comp-inspect) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |tip) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |style) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |pre) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1651181166473) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651181168795) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1651181170635) (:by |rJoDgvdeG) (:text |style-data) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:inner-text) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |tip) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text "||: ") (:type :leaf)
                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |grab-info) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |style) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1513786986945) (:by |root) (:text |:on-click) (:type :leaf)
                          |r $ {} (:at 1622395982771) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1622395982771) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1622395982771) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1622395982771) (:by |rJoDgvdeG) (:text |e) (:type :leaf)
                                  |j $ {} (:at 1643707630229) (:by |rJoDgvdeG) (:text |d!) (:type :leaf)
                              |n $ {} (:at 1622396112738) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1622396113350) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                  |L $ {} (:at 1622396113796) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1622396115474) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                                      |j $ {} (:at 1622396181569) (:by |rJoDgvdeG) (:text |js/window.devtoolsFormatters) (:type :leaf)
                                  |T $ {} (:at 1622395995583) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1622395997818) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                                      |j $ {} (:at 1622395999353) (:by |rJoDgvdeG) (:text |data) (:type :leaf)
                                  |j $ {} (:at 1622396147402) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1622396150828) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                                      |j $ {} (:at 1622396151173) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1622396153856) (:by |rJoDgvdeG) (:text |to-js-data) (:type :leaf)
                                          |j $ {} (:at 1622396156023) (:by |rJoDgvdeG) (:text |data) (:type :leaf)
          |grab-info $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |grab-info) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |cond) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |map?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text ||Map/) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |count) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610189676965) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                          |j $ {} (:at 1610189679756) (:by |rJoDgvdeG) (:text ||List/) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |count) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |set?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text ||Set/) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |count) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||nil) (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |number?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                  |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |keyword?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                  |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612761794050) (:by |rJoDgvdeG) (:text |bool?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                  |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |fn?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||Fn) (:type :leaf)
                  |yv $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610203140138) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |pr-str) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |data) (:type :leaf)
          |style-data $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651181143824) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-data) (:type :leaf)
              |r $ {} (:at 1651181145242) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1651181146289) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1651181147896) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1651181149675) (:by |rJoDgvdeG) (:text "|\"$0") (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:position) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:absolute) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:background-color) (:type :leaf)
                              |b $ {} (:at 1539015843887) (:by |root) (:text "|\"hsl(240,100%,0%)") (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:color) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:white) (:type :leaf)
                          |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:opacity) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |0.2) (:type :leaf)
                          |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:font-size) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text ||12px) (:type :leaf)
                          |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:font-family) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text ||Avenir,Verdana) (:type :leaf)
                          |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:line-height) (:type :leaf)
                              |j $ {} (:at 1613290464569) (:by |rJoDgvdeG) (:text "|\"1.4em") (:type :leaf)
                          |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:padding) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text "||2px 6px") (:type :leaf)
                          |yv $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:border-radius) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text ||4px) (:type :leaf)
                          |yx $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:max-width) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |160) (:type :leaf)
                          |yy $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:max-height) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |32) (:type :leaf)
                          |yyT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:white-space) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:normal) (:type :leaf)
                          |yyj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:overflow) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:ellipsis) (:type :leaf)
                          |yyr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |:default) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.comp.inspect) (:type :leaf)
            |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |f $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540830055277) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1508915140751) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |pre) (:type :leaf)
                        |v $ {} (:at 1504774121421) (:by |root) (:text |<>) (:type :leaf)
                |k $ {} (:at 1651181153297) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651181154597) (:by |rJoDgvdeG) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1651181155371) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651181155774) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651181158090) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.comp.space $ {}
        :defs $ {}
          |=< $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1509729563664) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |=<) (:type :leaf)
              |n $ {} (:at 1509729564574) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1509729564809) (:by |root) (:text |w) (:type :leaf)
                  |j $ {} (:at 1509729565457) (:by |root) (:text |x) (:type :leaf)
              |r $ {} (:at 1509729566572) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |comp-space) (:type :leaf)
                  |j $ {} (:at 1509729567667) (:by |root) (:text |w) (:type :leaf)
                  |r $ {} (:at 1509729568077) (:by |root) (:text |x) (:type :leaf)
          |comp-space $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |comp-space) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |w) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |h) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |w) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |style-space) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |:width) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |w) (:type :leaf)
                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |style-space) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |:height) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |h) (:type :leaf)
          |style-space $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-space) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:height) (:type :leaf)
                      |j $ {} (:at 1505230211192) (:by |root) (:text |1) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:width) (:type :leaf)
                      |j $ {} (:at 1505326468454) (:by |root) (:text |1) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:display) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:inline-block) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.comp.space) (:type :leaf)
            |v $ {} (:at 1505301338392) (:by |root) (:type :expr)
              :data $ {}
                |T $ {} (:at 1505301339203) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540830048701) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1508915151159) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |defcomp) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.controller.client $ {}
        :defs $ {}
          |activate-instance! $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |activate-instance!) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |entire-dom) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |mount-point) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |build-listener) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
                  |t $ {} (:at 1610190639372) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1643707892607) (:by |rJoDgvdeG) (:text |set!) (:type :leaf)
                      |j $ {} (:at 1643707893321) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1643707896705) (:by |rJoDgvdeG) (:text |.-innerHTML) (:type :leaf)
                          |T $ {} (:at 1610190643914) (:by |rJoDgvdeG) (:text |mount-point) (:type :leaf)
                      |v $ {} (:at 1610190647462) (:by |rJoDgvdeG) (:text ||) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622298984165) (:by |rJoDgvdeG) (:text |.!appendChild) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |mount-point) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |make-element) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |entire-dom) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                          |v $ {} (:at 1612022135008) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612022135488) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
          |build-listener $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |build-listener) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |simple-event) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |event->edn) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by |root) (:text |simple-event) (:type :leaf)
          |patch-instance! $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |patch-instance!) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |changes) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |mount-point) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |build-listener) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1611848949159) (:by |rJoDgvdeG) (:text |apply-dom-changes) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |changes) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |mount-point) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.controller.client) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.render.patch) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |apply-dom-changes) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |r $ {} (:at 1504774121421) (:by |root) (:text |event->edn) (:type :leaf)
                |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.render.dom) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |make-element) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.controller.resolve $ {}
        :defs $ {}
          |build-deliver-event $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |build-deliver-event) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |*global-element) (:type :leaf)
                  |j $ {} (:at 1615647049712) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |simple-event) (:type :leaf)
                  |n $ {} (:at 1610210012734) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1610211269724) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                      |T $ {} (:at 1610210013686) (:by |rJoDgvdeG) (:text |echo) (:type :leaf)
                      |j $ {} (:at 1610210017420) (:by |rJoDgvdeG) (:text "|\"event coord") (:type :leaf)
                      |r $ {} (:at 1610210020674) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |target-element) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |find-event-target) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |@*global-element) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |target-listener) (:type :leaf)
                              |j $ {} (:at 1610210611737) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1610210612515) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                  |L $ {} (:at 1610210613093) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610210616433) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                                      |j $ {} (:at 1610210618073) (:by |rJoDgvdeG) (:text |target-element) (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |get) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |:event) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |target-element) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                                  |j $ {} (:at 1610210628430) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1610210629941) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                                      |T $ {} (:at 1610210619661) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610210634787) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                                          |j $ {} (:at 1610210627788) (:by |rJoDgvdeG) (:text "|\"found no element") (:type :leaf)
                                          |r $ {} (:at 1610210640521) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                          |v $ {} (:at 1610210648248) (:by |rJoDgvdeG) (:text |event-name) (:type :leaf)
                                      |j $ {} (:at 1610210635732) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                          |x $ {} (:at 1584871534908) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584871546817) (:by |rJoDgvdeG) (:text |dispatch-wrap) (:type :leaf)
                              |j $ {} (:at 1584871547656) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584871547971) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1584871548221) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584871548803) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                      |j $ {} (:at 1584871557596) (:by |rJoDgvdeG) (:text |data) (:type :leaf)
                                  |r $ {} (:at 1615647055348) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1615647056049) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                      |L $ {} (:at 1615647056462) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1615647056611) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1615647058228) (:by |rJoDgvdeG) (:text |dispatch!) (:type :leaf)
                                              |j $ {} (:at 1615647064531) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1615647066184) (:by |rJoDgvdeG) (:text |deref) (:type :leaf)
                                                  |T $ {} (:at 1615647062613) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
                                      |T $ {} (:at 1584872185338) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1647336068192) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                          |T $ {} (:at 1584871560410) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610209623492) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                                              |j $ {} (:at 1584871563045) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                          |b $ {} (:at 1584871563843) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584871566681) (:by |rJoDgvdeG) (:text |dispatch!) (:type :leaf)
                                              |j $ {} (:at 1584871571390) (:by |rJoDgvdeG) (:text |:states) (:type :leaf)
                                              |r $ {} (:at 1584871573638) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584871573986) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1584871574651) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                                  |r $ {} (:at 1584871575952) (:by |rJoDgvdeG) (:text |data) (:type :leaf)
                                          |j $ {} (:at 1584872192690) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584872192690) (:by |rJoDgvdeG) (:text |dispatch!) (:type :leaf)
                                              |j $ {} (:at 1584872192690) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                              |r $ {} (:at 1584872192690) (:by |rJoDgvdeG) (:text |data) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |target-listener) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text "||listener found:") (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |target-listener) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |simple-event) (:type :leaf)
                                  |r $ {} (:at 1584871591793) (:by |rJoDgvdeG) (:text |dispatch-wrap) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text "||found no listener:") (:type :leaf)
                              |v $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                              |x $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
          |find-event-target $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |find-event-target) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
              |t $ {} (:at 1610211034290) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610211252801) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |T $ {} (:at 1610211048992) (:by |rJoDgvdeG) (:text |echo) (:type :leaf)
                  |j $ {} (:at 1610211054037) (:by |rJoDgvdeG) (:text "|\"looking for") (:type :leaf)
                  |v $ {} (:at 1610211139463) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |x $ {} (:at 1610211141818) (:by |rJoDgvdeG) (:text |event-name) (:type :leaf)
              |tT $ {} (:at 1612345336766) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612345382067) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1612345387113) (:by |rJoDgvdeG) (:text "|\"element cannot be nil") (:type :leaf)
                  |j $ {} (:at 1612345340922) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612345389618) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                      |j $ {} (:at 1612345346403) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
              |u $ {} (:at 1612012811290) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612345370113) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1612345374570) (:by |rJoDgvdeG) (:text "|\"coord cannot be nil") (:type :leaf)
                  |j $ {} (:at 1612012812288) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612345377089) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                      |j $ {} (:at 1612012814882) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |target-element) (:type :leaf)
                          |j $ {} (:at 1615658647125) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1615658647886) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                              |T $ {} (:at 1615658648500) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1615658648675) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1615658649281) (:by |rJoDgvdeG) (:text |m) (:type :leaf)
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |get-markup-at) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                              |j $ {} (:at 1622467282466) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1622467288043) (:by |rJoDgvdeG) (:text |apply-args) (:type :leaf)
                                  |L $ {} (:at 1622467294852) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1622467296784) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1622467296784) (:by |rJoDgvdeG) (:text |get-markup-at) (:type :leaf)
                                          |j $ {} (:at 1622467296784) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                                          |r $ {} (:at 1622467296784) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |P $ {} (:at 1622467298461) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1622467298935) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1622467299164) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1622467299588) (:by |rJoDgvdeG) (:text |m) (:type :leaf)
                                      |r $ {} (:at 1622467301067) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1622467301915) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                          |j $ {} (:at 1622467302180) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1622467303651) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                                              |j $ {} (:at 1622467304372) (:by |rJoDgvdeG) (:text |m) (:type :leaf)
                                          |r $ {} (:at 1622467307305) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1622467308032) (:by |rJoDgvdeG) (:text |recur) (:type :leaf)
                                              |j $ {} (:at 1622467310433) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1622467312526) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                                  |j $ {} (:at 1622467312819) (:by |rJoDgvdeG) (:text |m) (:type :leaf)
                                          |v $ {} (:at 1622467315330) (:by |rJoDgvdeG) (:text |m) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |element-exists?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |target-element) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text "||target element:") (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |pr-str) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |element-exists?) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1541907295253) (:by |root) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1541907082099) (:by |root) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1541907293020) (:by |root) (:text |get) (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:event) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target-element) (:type :leaf)
                                  |j $ {} (:at 1541907087091) (:by |root) (:text |event-name) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |target-element) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612012794436) (:by |rJoDgvdeG) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |element-exists?) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610209648997) (:by |rJoDgvdeG) (:text |slice) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |-) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |count) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by |root) (:text |1) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                              |v $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
          |get-markup-at $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |get-markup-at) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |markup) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text ||markup:) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |pr-str) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |markup) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |markup) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:tree) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |markup) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |coord-head) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |child-pair) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647338591446) (:by |rJoDgvdeG) (:text |find) (:type :leaf)
                                      |b $ {} (:at 1647338594698) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1647338594698) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
                                          |b $ {} (:at 1647338594698) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |child-entry) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |get) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |child-entry) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text |coord-head) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |child-pair) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |get-markup-at) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |get) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |child-pair) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |1) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                              |v $ {} (:at 1610185607797) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610185607797) (:by |rJoDgvdeG) (:text |raise) (:type :leaf)
                                  |j $ {} (:at 1610185607797) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610185607797) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                                      |j $ {} (:at 1610185607797) (:by |rJoDgvdeG) (:text "||child not found:") (:type :leaf)
                                      |r $ {} (:at 1610185607797) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |v $ {} (:at 1610185607797) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610185607797) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                                          |b $ {} (:at 1619541500447) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1619541500447) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
                                              |j $ {} (:at 1619541500447) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                                          |j $ {} (:at 1610185607797) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.controller.resolve) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.detect) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |element?) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.core $ {}
        :defs $ {}
          |*changes-logger $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610186320613) (:by |rJoDgvdeG) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |*changes-logger) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
          |*dispatch-fn $ {} (:at 1615647006945) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1615647020524) (:by |rJoDgvdeG) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1615647006945) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
              |r $ {} (:at 1615647011835) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
          |*dom-changes $ {} (:at 1610190371560) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610190373941) (:by |rJoDgvdeG) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1610190371560) (:by |rJoDgvdeG) (:text |*dom-changes) (:type :leaf)
              |r $ {} (:at 1610190371560) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610190376144) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
          |*global-element $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610186303395) (:by |rJoDgvdeG) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |*global-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
          |*rerender-changes $ {} (:at 1610211744239) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610211747209) (:by |rJoDgvdeG) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1647335633943) (:by |rJoDgvdeG) (:text |*rerender-changes) (:type :leaf)
              |r $ {} (:at 1610211744239) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610211748401) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
          |<> $ {} (:at 1610031443177) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610031443177) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610031443177) (:by |rJoDgvdeG) (:text |<>) (:type :leaf)
              |r $ {} (:at 1610031443177) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031463966) (:by |rJoDgvdeG) (:text |content) (:type :leaf)
                  |b $ {} (:at 1613831925958) (:by |rJoDgvdeG) (:text |?) (:type :leaf)
                  |j $ {} (:at 1651251863052) (:by |rJoDgvdeG) (:text |style) (:type :leaf)
              |v $ {} (:at 1651251851678) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1651251854039) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |L $ {} (:at 1651251854240) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651251855249) (:by |rJoDgvdeG) (:text |string?) (:type :leaf)
                      |b $ {} (:at 1651251858263) (:by |rJoDgvdeG) (:text |style) (:type :leaf)
                  |T $ {} (:at 1610031491741) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610031493089) (:by |rJoDgvdeG) (:text |span) (:type :leaf)
                      |j $ {} (:at 1610031495828) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610031496210) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1610031501269) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610031503170) (:by |rJoDgvdeG) (:text |:inner-text) (:type :leaf)
                              |j $ {} (:at 1610031505382) (:by |rJoDgvdeG) (:text |content) (:type :leaf)
                          |j $ {} (:at 1610031497055) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651251873334) (:by |rJoDgvdeG) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1610031500305) (:by |rJoDgvdeG) (:text |style) (:type :leaf)
                  |b $ {} (:at 1610031491741) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610031493089) (:by |rJoDgvdeG) (:text |span) (:type :leaf)
                      |j $ {} (:at 1610031495828) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610031496210) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1610031501269) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610031503170) (:by |rJoDgvdeG) (:text |:inner-text) (:type :leaf)
                              |j $ {} (:at 1610031505382) (:by |rJoDgvdeG) (:text |content) (:type :leaf)
                          |j $ {} (:at 1610031497055) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610031499540) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1610031500305) (:by |rJoDgvdeG) (:text |style) (:type :leaf)
          |>> $ {} (:at 1584717583807) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1584717583807) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1584717583807) (:by |rJoDgvdeG) (:text |>>) (:type :leaf)
              |r $ {} (:at 1584717583807) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1584717587429) (:by |rJoDgvdeG) (:text |states) (:type :leaf)
                  |j $ {} (:at 1584717589003) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
              |v $ {} (:at 1584717590808) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1584717593513) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |j $ {} (:at 1584717593734) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1584717593912) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584717602856) (:by |rJoDgvdeG) (:text |parent-cursor) (:type :leaf)
                          |j $ {} (:at 1584717633898) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610188885898) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                              |T $ {} (:at 1584717603162) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584717604395) (:by |rJoDgvdeG) (:text |:cursor) (:type :leaf)
                                  |j $ {} (:at 1584717605146) (:by |rJoDgvdeG) (:text |states) (:type :leaf)
                              |j $ {} (:at 1584717635438) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584717635678) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1584717607005) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584717615395) (:by |rJoDgvdeG) (:text |branch) (:type :leaf)
                          |j $ {} (:at 1610188881386) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610188882419) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                              |T $ {} (:at 1584717616411) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584717618041) (:by |rJoDgvdeG) (:text |get) (:type :leaf)
                                  |j $ {} (:at 1584717618973) (:by |rJoDgvdeG) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1584717619385) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                              |j $ {} (:at 1610188883119) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610188883500) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1584717620560) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1584717622795) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1584717623675) (:by |rJoDgvdeG) (:text |branch) (:type :leaf)
                      |r $ {} (:at 1584717625744) (:by |rJoDgvdeG) (:text |:cursor) (:type :leaf)
                      |v $ {} (:at 1584717626141) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584717626655) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                          |j $ {} (:at 1584717630765) (:by |rJoDgvdeG) (:text |parent-cursor) (:type :leaf)
                          |r $ {} (:at 1584717631832) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
          |a $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610440497856) (:by |rJoDgvdeG) (:text |a) (:type :leaf)
              |r $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610440499250) (:by |rJoDgvdeG) (:text |:a) (:type :leaf)
                  |r $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610440495617) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977910203) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |blockquote $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610733250062) (:by |rJoDgvdeG) (:text |blockquote) (:type :leaf)
              |r $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610733254490) (:by |rJoDgvdeG) (:text |:blockquote) (:type :leaf)
                  |r $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610733247330) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977871879) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |body $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610286183331) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
              |r $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610286186257) (:by |rJoDgvdeG) (:text |:body) (:type :leaf)
                  |r $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610286181345) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977938604) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |button $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610031622574) (:by |rJoDgvdeG) (:text |button) (:type :leaf)
              |r $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610031624803) (:by |rJoDgvdeG) (:text |:button) (:type :leaf)
                  |r $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610031620278) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1619539690966) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619539690966) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                      |j $ {} (:at 1619539690966) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                      |r $ {} (:at 1619539690966) (:by |rJoDgvdeG) (:text |confirm-child) (:type :leaf)
          |clear-cache! $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |clear-cache!) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
              |x $ {} (:at 1592132484436) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1611825969046) (:by |rJoDgvdeG) (:text |reset-calling-caches!) (:type :leaf)
              |y $ {} (:at 1650634141757) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1650634142422) (:by |rJoDgvdeG) (:text |reset-memof1-caches!) (:type :leaf)
          |code $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610732317924) (:by |rJoDgvdeG) (:text |code) (:type :leaf)
              |r $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610732320119) (:by |rJoDgvdeG) (:text |:code) (:type :leaf)
                  |r $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610732316196) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977948633) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |confirm-child $ {} (:at 1571849837293) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1571849837293) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1571849837293) (:by |rJoDgvdeG) (:text |confirm-child) (:type :leaf)
              |r $ {} (:at 1571849837293) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571849977778) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
              |t $ {} (:at 1571849854178) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645976797860) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1645976800143) (:by |rJoDgvdeG) (:text "|\"Invalid data in elements tree: ") (:type :leaf)
                  |j $ {} (:at 1571850633926) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1571850635465) (:by |rJoDgvdeG) (:text |or) (:type :leaf)
                      |H $ {} (:at 1571850818280) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571850818280) (:by |rJoDgvdeG) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1571850818280) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                      |L $ {} (:at 1571850636152) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571850638498) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                          |j $ {} (:at 1571850639292) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                      |T $ {} (:at 1571850629618) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1571850633520) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                          |T $ {} (:at 1571849978626) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
              |v $ {} (:at 1571849980101) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
          |confirm-child-pair $ {} (:at 1645977375671) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1645977381267) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |b $ {} (:at 1645977375671) (:by |rJoDgvdeG) (:text |confirm-child-pair) (:type :leaf)
              |h $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645977386034) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
              |k $ {} (:at 1645977590556) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645977591764) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1645977600093) (:by |rJoDgvdeG) (:text "|\"expected pair") (:type :leaf)
                  |h $ {} (:at 1645977605889) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645977606383) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                      |b $ {} (:at 1645977607663) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645977608525) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                          |b $ {} (:at 1645977610168) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                      |h $ {} (:at 1645977610661) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645977612576) (:by |rJoDgvdeG) (:text |&=) (:type :leaf)
                          |b $ {} (:at 1645977613087) (:by |rJoDgvdeG) (:text |2) (:type :leaf)
                          |h $ {} (:at 1645977613455) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645977614131) (:by |rJoDgvdeG) (:text |count) (:type :leaf)
                              |b $ {} (:at 1645977614618) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
              |o $ {} (:at 1645977392073) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1645977620270) (:by |rJoDgvdeG) (:text |&let) (:type :leaf)
                  |L $ {} (:at 1645977397285) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |b $ {} (:at 1645977401879) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                      |h $ {} (:at 1645977623363) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645977628187) (:by |rJoDgvdeG) (:text |nth) (:type :leaf)
                          |b $ {} (:at 1645977628788) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                          |h $ {} (:at 1645977629082) (:by |rJoDgvdeG) (:text |1) (:type :leaf)
                  |T $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                      |b $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:text "|\"Invalid data in elements tree: ") (:type :leaf)
                      |h $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:text |or) (:type :leaf)
                          |b $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:text |nil?) (:type :leaf)
                              |b $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                          |h $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                              |b $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                          |l $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                              |b $ {} (:at 1645977378443) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
              |q $ {} (:at 1645977636347) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
          |create-element $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |create-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |tag-name) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |props) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |&) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |children) (:type :leaf)
              |t $ {} (:at 1611379929360) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |5 $ {} (:at 1611379975598) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |D $ {} (:at 1611379931157) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |L $ {} (:at 1611379933883) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1611379933883) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                      |j $ {} (:at 1611379933883) (:by |rJoDgvdeG) (:text "||For rendering lists, please use list-> , got: ") (:type :leaf)
                      |r $ {} (:at 1611379933883) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1611379933883) (:by |rJoDgvdeG) (:text |pr-str) (:type :leaf)
                          |j $ {} (:at 1611379933883) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                  |T $ {} (:at 1610187405339) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1610187406024) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                      |L $ {} (:at 1610187406288) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610187407403) (:by |rJoDgvdeG) (:text |>) (:type :leaf)
                          |b $ {} (:at 1610187408824) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610187409608) (:by |rJoDgvdeG) (:text |count) (:type :leaf)
                              |j $ {} (:at 1610187411264) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                          |j $ {} (:at 1610187407943) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
                      |T $ {} (:at 1511967482844) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1511967483827) (:by |root) (:text |not) (:type :leaf)
                          |T $ {} (:at 1511967298757) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610187335022) (:by |rJoDgvdeG) (:text |any?) (:type :leaf)
                              |j $ {} (:at 1610187360587) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                              |r $ {} (:at 1511967305138) (:by |root) (:text |children) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |pick-attrs) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |props) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |styles) (:type :leaf)
                          |j $ {} (:at 1619539923158) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1619539924081) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                              |F $ {} (:at 1619539932087) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1619539932087) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                                  |j $ {} (:at 1619539932087) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1619539932087) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1619539932087) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                                  |r $ {} (:at 1619539932087) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1619539932087) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                              |L $ {} (:at 1619539924816) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1623693621484) (:by |rJoDgvdeG) (:text |.to-list) (:type :leaf)
                              |T $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:text |sort) (:type :leaf)
                                  |j $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                          |j $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:text |y) (:type :leaf)
                                      |r $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1647337449541) (:by |rJoDgvdeG) (:text |&compare) (:type :leaf)
                                          |j $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                          |r $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1610193060106) (:by |rJoDgvdeG) (:text |y) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                          |r $ {} (:at 1513782729323) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1513782731925) (:by |root) (:text |pick-event) (:type :leaf)
                              |j $ {} (:at 1513782735356) (:by |root) (:text |props) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610188595663) (:by |rJoDgvdeG) (:text |children-nodes) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1619539943720) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                              |V $ {} (:at 1619540174327) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                              |X $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:text |map-indexed) (:type :leaf)
                                  |j $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                                          |j $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:text |item) (:type :leaf)
                                      |n $ {} (:at 1645977770101) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645977776683) (:by |rJoDgvdeG) (:text |confirm-child) (:type :leaf)
                                          |b $ {} (:at 1645977778172) (:by |rJoDgvdeG) (:text |item) (:type :leaf)
                                      |r $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                                          |r $ {} (:at 1619540165920) (:by |rJoDgvdeG) (:text |item) (:type :leaf)
                              |b $ {} (:at 1619539950440) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1619539950440) (:by |rJoDgvdeG) (:text |filter) (:type :leaf)
                                  |j $ {} (:at 1619539950440) (:by |rJoDgvdeG) (:text |val-exists?) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1615282517750) (:by |rJoDgvdeG) (:text |%{}) (:type :leaf)
                      |b $ {} (:at 1615282521386) (:by |rJoDgvdeG) (:text |schema/Element) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:name) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |tag-name) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:coord) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:attrs) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                      |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |styles) (:type :leaf)
                      |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:event) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                      |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:children) (:type :leaf)
                          |j $ {} (:at 1610188598016) (:by |rJoDgvdeG) (:text |children-nodes) (:type :leaf)
          |create-list-element $ {} (:at 1509034723018) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1509034723018) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1509034723018) (:by |root) (:text |create-list-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |tag-name) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |props) (:type :leaf)
                  |v $ {} (:at 1509073531039) (:by |root) (:text |child-map) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |pick-attrs) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |props) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |styles) (:type :leaf)
                          |j $ {} (:at 1619540232105) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1619540233043) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                              |E $ {} (:at 1619540290152) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                              |ET $ {} (:at 1619540294488) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1619540294972) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                              |F $ {} (:at 1619540286780) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1619540286780) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                                  |r $ {} (:at 1619540286780) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1619540286780) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                              |H $ {} (:at 1619540283177) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1623693634596) (:by |rJoDgvdeG) (:text |.to-list) (:type :leaf)
                              |T $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:text |sort) (:type :leaf)
                                  |j $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                          |j $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:text |y) (:type :leaf)
                                      |r $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1647337486450) (:by |rJoDgvdeG) (:text |&compare) (:type :leaf)
                                          |j $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                          |r $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1610193202421) (:by |rJoDgvdeG) (:text |y) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                          |j $ {} (:at 1513782729323) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1513782731925) (:by |root) (:text |pick-event) (:type :leaf)
                              |j $ {} (:at 1513782735356) (:by |root) (:text |props) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1615282543127) (:by |rJoDgvdeG) (:text |%{}) (:type :leaf)
                      |b $ {} (:at 1615282546336) (:by |rJoDgvdeG) (:text |schema/Element) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:name) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |tag-name) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:coord) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:attrs) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                      |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |styles) (:type :leaf)
                      |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:event) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                      |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:children) (:type :leaf)
                          |j $ {} (:at 1645977174439) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645977174439) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                              |b $ {} (:at 1645977177860) (:by |rJoDgvdeG) (:text |child-map) (:type :leaf)
                              |h $ {} (:at 1645977369915) (:by |rJoDgvdeG) (:text |confirm-child-pair) (:type :leaf)
          |defcomp $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |defcomp) (:type :leaf)
              |r $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |comp-name) (:type :leaf)
                  |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |params) (:type :leaf)
                  |r $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |v $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
              |v $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text "|\"expected symbol of comp-name") (:type :leaf)
                  |r $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |symbol?) (:type :leaf)
                      |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |comp-name) (:type :leaf)
              |x $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text "|\"expected list for params") (:type :leaf)
                  |r $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                      |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |params) (:type :leaf)
              |y $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text "|\"some component retured") (:type :leaf)
                  |r $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |&>) (:type :leaf)
                      |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |count) (:type :leaf)
                          |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
                      |r $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
              |yT $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1623693443366) (:by |rJoDgvdeG) (:text |quasiquote) (:type :leaf)
                  |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
                      |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |~comp-name) (:type :leaf)
                      |r $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |~) (:type :leaf)
                          |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |params) (:type :leaf)
                      |v $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |extract-effects-list) (:type :leaf)
                          |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1615278702930) (:by |rJoDgvdeG) (:text |%{}) (:type :leaf)
                              |b $ {} (:at 1615278717160) (:by |rJoDgvdeG) (:text |schema/Component) (:type :leaf)
                              |r $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |:effects) (:type :leaf)
                                  |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |v $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |~) (:type :leaf)
                                      |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |turn-keyword) (:type :leaf)
                                          |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |comp-name) (:type :leaf)
                              |x $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                  |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                                      |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |~@) (:type :leaf)
                                          |j $ {} (:at 1612711003106) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
          |defeffect $ {} (:at 1610030655710) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610030665066) (:by |rJoDgvdeG) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1610030655710) (:by |rJoDgvdeG) (:text |defeffect) (:type :leaf)
              |r $ {} (:at 1610030655710) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610030672480) (:by |rJoDgvdeG) (:text |effect-name) (:type :leaf)
                  |j $ {} (:at 1610030676121) (:by |rJoDgvdeG) (:text |args) (:type :leaf)
                  |r $ {} (:at 1610030677021) (:by |rJoDgvdeG) (:text |params) (:type :leaf)
                  |v $ {} (:at 1610030677873) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1610030679274) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
              |v $ {} (:at 1610030679953) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610030699717) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1610030730759) (:by |rJoDgvdeG) (:text "|\"args in symbol") (:type :leaf)
                  |j $ {} (:at 1610030700237) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610030702055) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                      |j $ {} (:at 1610030702488) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610030703398) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                          |j $ {} (:at 1610030705352) (:by |rJoDgvdeG) (:text |args) (:type :leaf)
                      |r $ {} (:at 1610030705885) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610030707297) (:by |rJoDgvdeG) (:text |every?) (:type :leaf)
                          |b $ {} (:at 1619537870721) (:by |rJoDgvdeG) (:text |args) (:type :leaf)
                          |j $ {} (:at 1610030709464) (:by |rJoDgvdeG) (:text |symbol?) (:type :leaf)
              |x $ {} (:at 1610030679953) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610030699717) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1610030744038) (:by |rJoDgvdeG) (:text "|\"params like [action el at-place?]") (:type :leaf)
                  |j $ {} (:at 1610030700237) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610030702055) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                      |j $ {} (:at 1610030702488) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610030703398) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                          |j $ {} (:at 1610030718840) (:by |rJoDgvdeG) (:text |params) (:type :leaf)
                      |r $ {} (:at 1610030705885) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610030707297) (:by |rJoDgvdeG) (:text |every?) (:type :leaf)
                          |b $ {} (:at 1619537867098) (:by |rJoDgvdeG) (:text |params) (:type :leaf)
                          |j $ {} (:at 1610030709464) (:by |rJoDgvdeG) (:text |symbol?) (:type :leaf)
              |y $ {} (:at 1612711297848) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1612711298674) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |L $ {} (:at 1612711299315) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612711299820) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612711303774) (:by |rJoDgvdeG) (:text |args-var) (:type :leaf)
                          |j $ {} (:at 1612711304478) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612711464984) (:by |rJoDgvdeG) (:text |gensym) (:type :leaf)
                              |j $ {} (:at 1612711307302) (:by |rJoDgvdeG) (:text "|\"args") (:type :leaf)
                      |j $ {} (:at 1612711299820) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612711312011) (:by |rJoDgvdeG) (:text |params-var) (:type :leaf)
                          |j $ {} (:at 1612711304478) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612711466996) (:by |rJoDgvdeG) (:text |gensym) (:type :leaf)
                              |j $ {} (:at 1612711314039) (:by |rJoDgvdeG) (:text "|\"params") (:type :leaf)
                  |T $ {} (:at 1610030745111) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1623693450692) (:by |rJoDgvdeG) (:text |quasiquote) (:type :leaf)
                      |j $ {} (:at 1610030752742) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610030757397) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
                          |j $ {} (:at 1610030762581) (:by |rJoDgvdeG) (:text |~effect-name) (:type :leaf)
                          |r $ {} (:at 1610030767540) (:by |rJoDgvdeG) (:text |~args) (:type :leaf)
                          |v $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1615300144193) (:by |rJoDgvdeG) (:text |%{}) (:type :leaf)
                              |b $ {} (:at 1615300149120) (:by |rJoDgvdeG) (:text |schema/Effect) (:type :leaf)
                              |j $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1610030825039) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610030826237) (:by |rJoDgvdeG) (:text |~) (:type :leaf)
                                      |j $ {} (:at 1610030826696) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610030829029) (:by |rJoDgvdeG) (:text |turn-keyword) (:type :leaf)
                                          |j $ {} (:at 1610030833481) (:by |rJoDgvdeG) (:text |effect-name) (:type :leaf)
                              |v $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:text |:coord) (:type :leaf)
                                  |j $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |x $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:text |:args) (:type :leaf)
                                  |j $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1610030848269) (:by |rJoDgvdeG) (:text |~@args) (:type :leaf)
                              |y $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:text |:method) (:type :leaf)
                                  |j $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1610030816533) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612711320523) (:by |rJoDgvdeG) (:text |~args-var) (:type :leaf)
                                          |j $ {} (:at 1612711327228) (:by |rJoDgvdeG) (:text |~params-var) (:type :leaf)
                                      |r $ {} (:at 1612345738935) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1612345742846) (:by |rJoDgvdeG) (:text |let[]) (:type :leaf)
                                          |L $ {} (:at 1612711336939) (:by |rJoDgvdeG) (:text |~args) (:type :leaf)
                                          |P $ {} (:at 1612711329762) (:by |rJoDgvdeG) (:text |~args-var) (:type :leaf)
                                          |T $ {} (:at 1612345748027) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1612345750516) (:by |rJoDgvdeG) (:text |let[]) (:type :leaf)
                                              |L $ {} (:at 1612711341421) (:by |rJoDgvdeG) (:text |~params) (:type :leaf)
                                              |P $ {} (:at 1612711331885) (:by |rJoDgvdeG) (:text |~params-var) (:type :leaf)
                                              |T $ {} (:at 1610030913582) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610030946156) (:by |rJoDgvdeG) (:text |~@) (:type :leaf)
                                                  |j $ {} (:at 1610030930703) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610030930241) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                                      |j $ {} (:at 1610030932083) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610030932467) (:by |rJoDgvdeG) (:text |empty?) (:type :leaf)
                                                          |j $ {} (:at 1610030933840) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
                                                      |r $ {} (:at 1610030935487) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1623693577109) (:by |rJoDgvdeG) (:text |quasiquote) (:type :leaf)
                                                          |j $ {} (:at 1610030953478) (:by |rJoDgvdeG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610030954673) (:by |rJoDgvdeG) (:text |echo) (:type :leaf)
                                                              |j $ {} (:at 1610030971291) (:by |rJoDgvdeG) (:text "|\"WARNING:") (:type :leaf)
                                                              |r $ {} (:at 1610030975762) (:by |rJoDgvdeG) (:text |~effect-name) (:type :leaf)
                                                              |t $ {} (:at 1610031007777) (:by |rJoDgvdeG) (:text "|\"lack code for handling effects!") (:type :leaf)
                                                              |v $ {} (:at 1610030975891) (:by |rJoDgvdeG) (:text |) (:type :leaf)
                                                      |v $ {} (:at 1610030944279) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
          |defplugin $ {} (:at 1610031722067) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610031726411) (:by |rJoDgvdeG) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1610031722067) (:by |rJoDgvdeG) (:text |defplugin) (:type :leaf)
              |r $ {} (:at 1610031722067) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031731498) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |j $ {} (:at 1610031732369) (:by |rJoDgvdeG) (:text |params) (:type :leaf)
                  |r $ {} (:at 1610031733089) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |v $ {} (:at 1610031733739) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
              |v $ {} (:at 1610031734337) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031766815) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1610031762483) (:by |rJoDgvdeG) (:text "|\"expected symbol") (:type :leaf)
                  |r $ {} (:at 1610031763354) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610031764751) (:by |rJoDgvdeG) (:text |symbol?) (:type :leaf)
                      |j $ {} (:at 1610031765111) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
              |x $ {} (:at 1610031767219) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031768231) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1610031774319) (:by |rJoDgvdeG) (:text "|\"expected params") (:type :leaf)
                  |r $ {} (:at 1610031775547) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610031776576) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                      |j $ {} (:at 1610031777512) (:by |rJoDgvdeG) (:text |params) (:type :leaf)
              |y $ {} (:at 1610031778518) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031779680) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1610031787309) (:by |rJoDgvdeG) (:text "|\"expected some result") (:type :leaf)
                  |r $ {} (:at 1610031789360) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610031791957) (:by |rJoDgvdeG) (:text |>) (:type :leaf)
                      |j $ {} (:at 1610031792231) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610031794388) (:by |rJoDgvdeG) (:text |count) (:type :leaf)
                          |j $ {} (:at 1610031794922) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
                      |r $ {} (:at 1610031795966) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
              |yT $ {} (:at 1610031797072) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1623693459981) (:by |rJoDgvdeG) (:text |quasiquote) (:type :leaf)
                  |j $ {} (:at 1611826117097) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1611826117097) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
                      |j $ {} (:at 1611826117097) (:by |rJoDgvdeG) (:text |~x) (:type :leaf)
                      |r $ {} (:at 1611826117097) (:by |rJoDgvdeG) (:text |~params) (:type :leaf)
                      |v $ {} (:at 1611826117097) (:by |rJoDgvdeG) (:text |~@body) (:type :leaf)
          |div $ {} (:at 1610030416057) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610030416057) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610030416057) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
              |r $ {} (:at 1610030416057) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610030517471) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610030518101) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610030519221) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610030520709) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610030525466) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610030528267) (:by |rJoDgvdeG) (:text |:div) (:type :leaf)
                  |r $ {} (:at 1610030544609) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610030548525) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1619539710770) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |element-type $ {} (:at 1565455760753) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1565455770526) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1565455760753) (:by |rJoDgvdeG) (:text |element-type) (:type :leaf)
              |r $ {} (:at 1565455760753) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1565455772000) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |j $ {} (:at 1565455774250) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1565455776972) (:by |rJoDgvdeG) (:text |exists?) (:type :leaf)
                      |j $ {} (:at 1565455779009) (:by |rJoDgvdeG) (:text |js/Element) (:type :leaf)
                  |r $ {} (:at 1565455782729) (:by |rJoDgvdeG) (:text |js/Element) (:type :leaf)
                  |v $ {} (:at 1565455786739) (:by |rJoDgvdeG) (:text |js/Error) (:type :leaf)
          |extract-effects-list $ {} (:at 1612012330271) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1612012331901) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1612012330271) (:by |rJoDgvdeG) (:text |extract-effects-list) (:type :leaf)
              |r $ {} (:at 1612012330271) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612012648008) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
              |v $ {} (:at 1612012631761) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1612012634157) (:by |rJoDgvdeG) (:text |&let) (:type :leaf)
                  |L $ {} (:at 1612012634755) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612012641843) (:by |rJoDgvdeG) (:text |markup-tree) (:type :leaf)
                      |j $ {} (:at 1612012643996) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612012644698) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                          |j $ {} (:at 1612012646057) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                  |T $ {} (:at 1615647720727) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1615647721566) (:by |rJoDgvdeG) (:text |cond) (:type :leaf)
                      |L $ {} (:at 1615647730672) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1615647732016) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1615647732597) (:by |rJoDgvdeG) (:text |nil?) (:type :leaf)
                              |j $ {} (:at 1615647735110) (:by |rJoDgvdeG) (:text |markup-tree) (:type :leaf)
                          |j $ {} (:at 1615647736114) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1615647736996) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                              |j $ {} (:at 1615647738087) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                              |r $ {} (:at 1615647740189) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                              |v $ {} (:at 1615647740867) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1615647742575) (:by |rJoDgvdeG) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1615647757967) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                      |T $ {} (:at 1612012341713) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612012335062) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612012335062) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                              |j $ {} (:at 1612012335062) (:by |rJoDgvdeG) (:text |markup-tree) (:type :leaf)
                          |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                              |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |node-tree) (:type :leaf)
                                      |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1647338652919) (:by |rJoDgvdeG) (:text |find) (:type :leaf)
                                          |b $ {} (:at 1647338656474) (:by |rJoDgvdeG) (:text |markup-tree) (:type :leaf)
                                          |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                              |r $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                                                  |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1615282871888) (:by |rJoDgvdeG) (:text |record?) (:type :leaf)
                                                      |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                                  |r $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |or) (:type :leaf)
                                                      |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                                                          |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                                      |r $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                                                          |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                  |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |effects-list) (:type :leaf)
                                      |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1619540516640) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                          |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |markup-tree) (:type :leaf)
                                          |r $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |filter) (:type :leaf)
                                              |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |effect?) (:type :leaf)
                              |r $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645976708714) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                                  |r $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1645976715019) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                                      |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                      |j $ {} (:at 1612012372803) (:by |rJoDgvdeG) (:text |node-tree) (:type :leaf)
                                  |t $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1645976717446) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                                      |T $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |:effects) (:type :leaf)
                                      |j $ {} (:at 1612012346347) (:by |rJoDgvdeG) (:text |effects-list) (:type :leaf)
                      |j $ {} (:at 1615647723453) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1615647725182) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                          |j $ {} (:at 1615647726049) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
          |h1 $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610732325454) (:by |rJoDgvdeG) (:text |h1) (:type :leaf)
              |r $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610732327064) (:by |rJoDgvdeG) (:text |:h1) (:type :leaf)
                  |r $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610732324075) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |w $ {} (:at 1645977845775) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |h2 $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610732332915) (:by |rJoDgvdeG) (:text |h2) (:type :leaf)
              |r $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610732334442) (:by |rJoDgvdeG) (:text |:h2) (:type :leaf)
                  |r $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610732331213) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977852704) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |h3 $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610732340550) (:by |rJoDgvdeG) (:text |h3) (:type :leaf)
              |r $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610732342782) (:by |rJoDgvdeG) (:text |:h3) (:type :leaf)
                  |r $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610732339158) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977857849) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |h4 $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610732348010) (:by |rJoDgvdeG) (:text |h4) (:type :leaf)
              |r $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610732350745) (:by |rJoDgvdeG) (:text |:h4) (:type :leaf)
                  |r $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610732346076) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977863044) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |head $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610286130788) (:by |rJoDgvdeG) (:text |head) (:type :leaf)
              |r $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610286132678) (:by |rJoDgvdeG) (:text |:head) (:type :leaf)
                  |r $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610286129088) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977959024) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |html $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610286116982) (:by |rJoDgvdeG) (:text |html) (:type :leaf)
              |r $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610286119221) (:by |rJoDgvdeG) (:text |:html) (:type :leaf)
                  |r $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610286114364) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1619539742823) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619539742823) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                      |j $ {} (:at 1619539742823) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                      |r $ {} (:at 1619539742823) (:by |rJoDgvdeG) (:text |confirm-child) (:type :leaf)
          |img $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610698200294) (:by |rJoDgvdeG) (:text |img) (:type :leaf)
              |r $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610698202382) (:by |rJoDgvdeG) (:text |:img) (:type :leaf)
                  |r $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610698198957) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977930311) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |input $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610031329024) (:by |rJoDgvdeG) (:text |input) (:type :leaf)
              |r $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610031331127) (:by |rJoDgvdeG) (:text |:input) (:type :leaf)
                  |r $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610031326810) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1619539753868) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |li $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610733267779) (:by |rJoDgvdeG) (:text |li) (:type :leaf)
              |r $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610733270252) (:by |rJoDgvdeG) (:text |:li) (:type :leaf)
                  |r $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610733266569) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977888940) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |link $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610286168183) (:by |rJoDgvdeG) (:text |link) (:type :leaf)
              |r $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610286170612) (:by |rJoDgvdeG) (:text |:link) (:type :leaf)
                  |r $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610286166301) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977964415) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |list-> $ {} (:at 1610031532007) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610031532007) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610031532007) (:by |rJoDgvdeG) (:text |list->) (:type :leaf)
              |r $ {} (:at 1610031532007) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031540975) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610031542832) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610031548072) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031584471) (:by |rJoDgvdeG) (:text |create-list-element) (:type :leaf)
                  |j $ {} (:at 1610031553185) (:by |rJoDgvdeG) (:text |:div) (:type :leaf)
                  |r $ {} (:at 1610031560189) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610031561655) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |mount-app! $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |mount-app!) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1612012121603) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                  |r $ {} (:at 1615647043808) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610186894501) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |T $ {} (:at 1504774121421) (:by |root) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1612062556808) (:by |rJoDgvdeG) (:text "||1st argument should be an element") (:type :leaf)
                  |j $ {} (:at 1610186845358) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1610186881050) (:by |rJoDgvdeG) (:text |or) (:type :leaf)
                      |L $ {} (:at 1610186847878) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610186883285) (:by |rJoDgvdeG) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1610186852681) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1643707811109) (:by |rJoDgvdeG) (:text |instance?) (:type :leaf)
                          |X $ {} (:at 1643707827045) (:by |rJoDgvdeG) (:text |element-type) (:type :leaf)
                          |b $ {} (:at 1643707815266) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610186895410) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |T $ {} (:at 1504774121421) (:by |root) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1612062560605) (:by |rJoDgvdeG) (:text "||2nd argument should be a component") (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                      |j $ {} (:at 1612012117977) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
              |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |build-deliver-event) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |*global-element) (:type :leaf)
                              |r $ {} (:at 1615647046504) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
                      |r $ {} (:at 1571583125696) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571583125696) (:by |rJoDgvdeG) (:text |*changes) (:type :leaf)
                          |j $ {} (:at 1612107603418) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1612107604502) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                              |L $ {} (:at 1612107607765) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612107607765) (:by |rJoDgvdeG) (:text |reset!) (:type :leaf)
                                  |j $ {} (:at 1612107611171) (:by |rJoDgvdeG) (:text |*dom-changes) (:type :leaf)
                                  |r $ {} (:at 1612107607765) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612107607765) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |T $ {} (:at 1610190370520) (:by |rJoDgvdeG) (:text |*dom-changes) (:type :leaf)
                      |v $ {} (:at 1571583130554) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571583130554) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                          |j $ {} (:at 1571583130554) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571583130554) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1647335785450) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1647335785450) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                  |b $ {} (:at 1647335785450) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |h $ {} (:at 1647335785450) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                  |l $ {} (:at 1647335785450) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                              |v $ {} (:at 1571583130554) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571583130554) (:by |rJoDgvdeG) (:text |swap!) (:type :leaf)
                                  |j $ {} (:at 1571583130554) (:by |rJoDgvdeG) (:text |*changes) (:type :leaf)
                                  |r $ {} (:at 1571583130554) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                  |v $ {} (:at 1647335788914) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647335789846) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                      |b $ {} (:at 1647335790708) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                      |h $ {} (:at 1647335790708) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |l $ {} (:at 1647335790708) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                      |o $ {} (:at 1647335790708) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text "||mount app") (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |activate-instance!) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
                  |w $ {} (:at 1571583146439) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571583152433) (:by |rJoDgvdeG) (:text |collect-mounting) (:type :leaf)
                      |j $ {} (:at 1571583154801) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                      |n $ {} (:at 1612061234309) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612061234700) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                      |r $ {} (:at 1571583155692) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571583155267) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                      |v $ {} (:at 1571583164474) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                      |x $ {} (:at 1572885066295) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                  |wT $ {} (:at 1571583222453) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571583222453) (:by |rJoDgvdeG) (:text |patch-instance!) (:type :leaf)
                      |j $ {} (:at 1571583222453) (:by |rJoDgvdeG) (:text |@*changes) (:type :leaf)
                      |r $ {} (:at 1571583222453) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                      |v $ {} (:at 1571583222453) (:by |rJoDgvdeG) (:text |deliver-event) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |*global-element) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
          |option $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610698328524) (:by |rJoDgvdeG) (:text |option) (:type :leaf)
              |r $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610698331006) (:by |rJoDgvdeG) (:text |:option) (:type :leaf)
                  |r $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610698325447) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977894840) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |pre $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610031315138) (:by |rJoDgvdeG) (:text |pre) (:type :leaf)
              |r $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610031317153) (:by |rJoDgvdeG) (:text |:pre) (:type :leaf)
                  |r $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610031313487) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977943117) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |realize-ssr! $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |realize-ssr!) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1612012167973) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |dispatch!) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |instance?) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |element-type) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text "||1st argument should be an element") (:type :leaf)
              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                      |j $ {} (:at 1612012164211) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text "||2nd argument should be a component") (:type :leaf)
              |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1529832063849) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529832069280) (:by |root) (:text |app-element) (:type :leaf)
                          |j $ {} (:at 1529815617824) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529815642401) (:by |root) (:text |.-firstElementChild) (:type :leaf)
                              |j $ {} (:at 1529815626176) (:by |root) (:text |target) (:type :leaf)
                      |r $ {} (:at 1572231935928) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1572231935928) (:by |root) (:text |*changes) (:type :leaf)
                          |j $ {} (:at 1612763432302) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612763432302) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                              |j $ {} (:at 1612763432302) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612763432302) (:by |rJoDgvdeG) (:text |reset!) (:type :leaf)
                                  |j $ {} (:at 1647335638240) (:by |rJoDgvdeG) (:text |*rerender-changes) (:type :leaf)
                                  |r $ {} (:at 1612763432302) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612763432302) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |r $ {} (:at 1647335637222) (:by |rJoDgvdeG) (:text |*rerender-changes) (:type :leaf)
                      |v $ {} (:at 1572231940314) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1572231940314) (:by |root) (:text |collect!) (:type :leaf)
                          |j $ {} (:at 1572231940314) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1572231940314) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1647335771148) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1647335771148) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                  |b $ {} (:at 1647335771148) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |h $ {} (:at 1647335771148) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                  |l $ {} (:at 1647335771148) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                              |v $ {} (:at 1572231940314) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1572231940314) (:by |root) (:text |swap!) (:type :leaf)
                                  |j $ {} (:at 1572231940314) (:by |root) (:text |*changes) (:type :leaf)
                                  |r $ {} (:at 1572231940314) (:by |root) (:text |conj) (:type :leaf)
                                  |v $ {} (:at 1647335773669) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647335773850) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                      |b $ {} (:at 1647335774879) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                      |h $ {} (:at 1647335774879) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |l $ {} (:at 1647335774879) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                      |o $ {} (:at 1647335774879) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                      |x $ {} (:at 1572232092948) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1572232092948) (:by |root) (:text |deliver-event) (:type :leaf)
                          |j $ {} (:at 1572232092948) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1572232092948) (:by |root) (:text |build-deliver-event) (:type :leaf)
                              |j $ {} (:at 1572232092948) (:by |root) (:text |*global-element) (:type :leaf)
                              |r $ {} (:at 1572232092948) (:by |root) (:text |dispatch!) (:type :leaf)
                  |w $ {} (:at 1529832194519) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1529832196460) (:by |root) (:text |if) (:type :leaf)
                      |L $ {} (:at 1529832079527) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529832161915) (:by |root) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1529832082894) (:by |root) (:text |app-element) (:type :leaf)
                      |T $ {} (:at 1610611689277) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610611689277) (:by |rJoDgvdeG) (:text |raise) (:type :leaf)
                          |j $ {} (:at 1610611689277) (:by |rJoDgvdeG) (:text "|\"Detected no element from SSR!") (:type :leaf)
                  |x $ {} (:at 1529815663311) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529815670222) (:by |root) (:text |compare-to-dom!) (:type :leaf)
                      |j $ {} (:at 1529815398942) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529815402369) (:by |root) (:text |purify-element) (:type :leaf)
                          |j $ {} (:at 1529815403992) (:by |root) (:text |element) (:type :leaf)
                      |r $ {} (:at 1529832076748) (:by |root) (:text |app-element) (:type :leaf)
                  |xT $ {} (:at 1572231952932) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1572231952932) (:by |root) (:text |collect-mounting) (:type :leaf)
                      |j $ {} (:at 1572231952932) (:by |root) (:text |collect!) (:type :leaf)
                      |n $ {} (:at 1613375538140) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1613375538457) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                      |r $ {} (:at 1572231952932) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1572231952932) (:by |root) (:text |[]) (:type :leaf)
                      |v $ {} (:at 1572231952932) (:by |root) (:text |element) (:type :leaf)
                      |x $ {} (:at 1572885203913) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                  |xj $ {} (:at 1572231958599) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1572231958599) (:by |root) (:text |patch-instance!) (:type :leaf)
                      |j $ {} (:at 1572231958599) (:by |root) (:text |@*changes) (:type :leaf)
                      |r $ {} (:at 1572231958599) (:by |root) (:text |target) (:type :leaf)
                      |v $ {} (:at 1572231958599) (:by |root) (:text |deliver-event) (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |*global-element) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |mute-element) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
          |render! $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |render!) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |markup) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |dispatch!) (:type :leaf)
              |t $ {} (:at 1615646999982) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1615647024970) (:by |rJoDgvdeG) (:text |reset!) (:type :leaf)
                  |T $ {} (:at 1615647005614) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
                  |j $ {} (:at 1615647029249) (:by |rJoDgvdeG) (:text |dispatch!) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |some?) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |@*global-element) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |rerender-app!) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |markup) (:type :leaf)
                      |v $ {} (:at 1615647033830) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |mount-app!) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |markup) (:type :leaf)
                      |v $ {} (:at 1615647034828) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
          |rerender-app! $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |rerender-app!) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1612012096451) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                  |r $ {} (:at 1615647037251) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
              |t $ {} (:at 1592135595342) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1611825931759) (:by |rJoDgvdeG) (:text |tick-calling-loop!) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |build-deliver-event) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |*global-element) (:type :leaf)
                              |r $ {} (:at 1615647038575) (:by |rJoDgvdeG) (:text |*dispatch-fn) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |*changes) (:type :leaf)
                          |j $ {} (:at 1610211723932) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610211726001) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                              |L $ {} (:at 1610211726640) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610211728928) (:by |rJoDgvdeG) (:text |reset!) (:type :leaf)
                                  |j $ {} (:at 1647335670620) (:by |rJoDgvdeG) (:text |*rerender-changes) (:type :leaf)
                                  |r $ {} (:at 1610211733245) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610211733758) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |T $ {} (:at 1647335672105) (:by |rJoDgvdeG) (:text |*rerender-changes) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1647335728756) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                  |X $ {} (:at 1647335731096) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |b $ {} (:at 1647335747164) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                  |h $ {} (:at 1647335735960) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |swap!) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |*changes) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |conj) (:type :leaf)
                                  |v $ {} (:at 1647335739559) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647335739989) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                      |b $ {} (:at 1647335741154) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                                      |h $ {} (:at 1647335742590) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |l $ {} (:at 1647335744664) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                      |o $ {} (:at 1647335745753) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |@*global-element) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |find-element-diffs) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |[]) (:type :leaf)
                      |t $ {} (:at 1612022533415) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612022532943) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by |root) (:text |@*global-element) (:type :leaf)
                      |x $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645976302292) (:by |rJoDgvdeG) (:text |if-let) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |logger) (:type :leaf)
                          |b $ {} (:at 1504774121421) (:by |root) (:text |@*changes-logger) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |logger) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |@*global-element) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by |root) (:text |@*changes) (:type :leaf)
                  |yD $ {} (:at 1621413193633) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1621413923727) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                      |T $ {} (:at 1621413271995) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                      |j $ {} (:at 1621413193633) (:by |rJoDgvdeG) (:text ||Changes:) (:type :leaf)
                      |r $ {} (:at 1621413193633) (:by |rJoDgvdeG) (:text |@*changes) (:type :leaf)
                  |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |patch-instance!) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |@*changes) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by |root) (:text |deliver-event) (:type :leaf)
                  |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |*global-element) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
          |script $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610285523160) (:by |rJoDgvdeG) (:text |script) (:type :leaf)
              |r $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610285525860) (:by |rJoDgvdeG) (:text |:script) (:type :leaf)
                  |r $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610285521266) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977917287) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |select $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610698320664) (:by |rJoDgvdeG) (:text |select) (:type :leaf)
              |r $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610698322954) (:by |rJoDgvdeG) (:text |:select) (:type :leaf)
                  |r $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610698318880) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977900586) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |span $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610031358035) (:by |rJoDgvdeG) (:text |span) (:type :leaf)
              |r $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610031359954) (:by |rJoDgvdeG) (:text |:span) (:type :leaf)
                  |r $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610031356233) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1645977968817) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |style $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610286857848) (:by |rJoDgvdeG) (:text |style) (:type :leaf)
              |r $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610286859838) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                  |r $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610286856590) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1619539801350) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
          |textarea $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610032928909) (:by |rJoDgvdeG) (:text |textarea) (:type :leaf)
              |r $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610032931348) (:by |rJoDgvdeG) (:text |:textarea) (:type :leaf)
                  |r $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610032926645) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1619539807158) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619539807158) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                      |j $ {} (:at 1619539807158) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                      |r $ {} (:at 1619539807158) (:by |rJoDgvdeG) (:text |confirm-child) (:type :leaf)
          |title $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610286153789) (:by |rJoDgvdeG) (:text |title) (:type :leaf)
              |r $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |j $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |r $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
              |v $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:text |create-element) (:type :leaf)
                  |j $ {} (:at 1610286156036) (:by |rJoDgvdeG) (:text |:title) (:type :leaf)
                  |r $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |v $ {} (:at 1610286151965) (:by |rJoDgvdeG) (:text |&) (:type :leaf)
                  |x $ {} (:at 1619539812251) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.core) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.controller.resolve) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |build-deliver-event) (:type :leaf)
                |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.render.diff) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |find-element-diffs) (:type :leaf)
                |xT $ {} (:at 1571584626730) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1571584633569) (:by |rJoDgvdeG) (:text |respo.render.effect) (:type :leaf)
                    |r $ {} (:at 1571584635633) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1571584635914) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1571584639313) (:by |rJoDgvdeG) (:text |collect-mounting) (:type :leaf)
                |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |purify-element) (:type :leaf)
                        |r $ {} (:at 1612763181558) (:by |rJoDgvdeG) (:text |mute-element) (:type :leaf)
                |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.controller.client) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |activate-instance!) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |patch-instance!) (:type :leaf)
                |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.list) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |pick-attrs) (:type :leaf)
                        |n $ {} (:at 1513782741285) (:by |root) (:text |pick-event) (:type :leaf)
                        |t $ {} (:at 1514823570239) (:by |root) (:text |val-exists?) (:type :leaf)
                |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.detect) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                        |r $ {} (:at 1571850642783) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                        |v $ {} (:at 1612012412557) (:by |rJoDgvdeG) (:text |effect?) (:type :leaf)
                |yv $ {} (:at 1509727695077) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1509727698379) (:by |root) (:text |respo.schema) (:type :leaf)
                    |r $ {} (:at 1509727698767) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1509727699801) (:by |root) (:text |schema) (:type :leaf)
                |yxT $ {} (:at 1612763276296) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1612763280273) (:by |rJoDgvdeG) (:text |respo.util.dom) (:type :leaf)
                    |r $ {} (:at 1612763281554) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1612763281759) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1612763283031) (:by |rJoDgvdeG) (:text |compare-to-dom!) (:type :leaf)
                |yy $ {} (:at 1592132244745) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1611825950983) (:by |rJoDgvdeG) (:text |memof.alias) (:type :leaf)
                    |r $ {} (:at 1611825939259) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1611825936682) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1611825934103) (:by |rJoDgvdeG) (:text |tick-calling-loop!) (:type :leaf)
                        |j $ {} (:at 1611825972923) (:by |rJoDgvdeG) (:text |reset-calling-caches!) (:type :leaf)
                |z $ {} (:at 1650634103152) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1650634107485) (:by |rJoDgvdeG) (:text |memof.once) (:type :leaf)
                    |b $ {} (:at 1650634108285) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1650634108519) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1650634136585) (:by |rJoDgvdeG) (:text |reset-memof1-caches!) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.css $ {}
        :configs $ {}
        :defs $ {}
          |*style-caches $ {} (:at 1651174578680) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651174593277) (:by |rJoDgvdeG) (:text |defatom) (:type :leaf)
              |b $ {} (:at 1651174578680) (:by |rJoDgvdeG) (:text |*style-caches) (:type :leaf)
              |h $ {} (:at 1651174578680) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651174595152) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
          |*style-list-in-nodejs $ {} (:at 1659096699553) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1659096701187) (:by |rJoDgvdeG) (:text |defatom) (:type :leaf)
              |b $ {} (:at 1659096699553) (:by |rJoDgvdeG) (:text |*style-list-in-nodejs) (:type :leaf)
              |h $ {} (:at 1659096699553) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1659096703279) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
          |create-style! $ {} (:at 1651174626759) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651174626759) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |b $ {} (:at 1651174626759) (:by |rJoDgvdeG) (:text |create-style!) (:type :leaf)
              |h $ {} (:at 1651174626759) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651174970674) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                  |b $ {} (:at 1651174972502) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
              |l $ {} (:at 1651174973342) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651174975272) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1651174983001) (:by |rJoDgvdeG) (:text "|\"expected rules in map") (:type :leaf)
                  |h $ {} (:at 1651175037042) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651175039872) (:by |rJoDgvdeG) (:text |map?) (:type :leaf)
                      |b $ {} (:at 1651175041527) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
              |o $ {} (:at 1651175424571) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1651175425232) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |L $ {} (:at 1651175426091) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651175428344) (:by |rJoDgvdeG) (:text |contains?) (:type :leaf)
                      |b $ {} (:at 1651175431646) (:by |rJoDgvdeG) (:text |@*style-caches) (:type :leaf)
                      |h $ {} (:at 1651175436475) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                  |P $ {} (:at 1651175525993) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1651175526663) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                      |L $ {} (:at 1651175529425) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651175542850) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                          |X $ {} (:at 1651175536174) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
                          |b $ {} (:at 1651175529425) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651175529425) (:by |rJoDgvdeG) (:text |get-in) (:type :leaf)
                              |b $ {} (:at 1651175529425) (:by |rJoDgvdeG) (:text |@*style-caches) (:type :leaf)
                              |h $ {} (:at 1651175529425) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175529425) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1651175529425) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                  |h $ {} (:at 1651175529425) (:by |rJoDgvdeG) (:text |:rules) (:type :leaf)
                      |P $ {} (:at 1651176903256) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                      |T $ {} (:at 1651175496709) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651175498056) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                          |b $ {} (:at 1651175498299) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651175498989) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175500615) (:by |rJoDgvdeG) (:text |style-el) (:type :leaf)
                                  |b $ {} (:at 1651175504489) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175504489) (:by |rJoDgvdeG) (:text |get-in) (:type :leaf)
                                      |b $ {} (:at 1651175504489) (:by |rJoDgvdeG) (:text |@*style-caches) (:type :leaf)
                                      |h $ {} (:at 1651175504489) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651175504489) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                          |b $ {} (:at 1651175504489) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                          |h $ {} (:at 1651175506448) (:by |rJoDgvdeG) (:text |:el) (:type :leaf)
                              |b $ {} (:at 1651175566664) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175566664) (:by |rJoDgvdeG) (:text |css-block) (:type :leaf)
                                  |b $ {} (:at 1651175613769) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175616415) (:by |rJoDgvdeG) (:text |render-css-block) (:type :leaf)
                                      |b $ {} (:at 1651175622200) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                      |h $ {} (:at 1651175622900) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
                          |h $ {} (:at 1651175571619) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651175571619) (:by |rJoDgvdeG) (:text |set!) (:type :leaf)
                              |b $ {} (:at 1651175571619) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175571619) (:by |rJoDgvdeG) (:text |.-innerHTML) (:type :leaf)
                                  |b $ {} (:at 1651175571619) (:by |rJoDgvdeG) (:text |style-el) (:type :leaf)
                              |h $ {} (:at 1651175571619) (:by |rJoDgvdeG) (:text |css-block) (:type :leaf)
                          |l $ {} (:at 1651175578358) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651175578358) (:by |rJoDgvdeG) (:text |swap!) (:type :leaf)
                              |b $ {} (:at 1651175578358) (:by |rJoDgvdeG) (:text |*style-caches) (:type :leaf)
                              |h $ {} (:at 1651175580381) (:by |rJoDgvdeG) (:text |assoc-in) (:type :leaf)
                              |l $ {} (:at 1651175581547) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1651175582171) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                  |T $ {} (:at 1651175578358) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                  |b $ {} (:at 1651175588320) (:by |rJoDgvdeG) (:text |:rules) (:type :leaf)
                              |o $ {} (:at 1651175590698) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
                          |o $ {} (:at 1651176885114) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                  |T $ {} (:at 1659097577356) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1659097582857) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                      |L $ {} (:at 1659097585431) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1659097585128) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1659097585128) (:by |rJoDgvdeG) (:text |css-block) (:type :leaf)
                              |b $ {} (:at 1659097585128) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1659097585128) (:by |rJoDgvdeG) (:text |render-css-block) (:type :leaf)
                                  |b $ {} (:at 1659097585128) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                  |h $ {} (:at 1659097585128) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
                      |T $ {} (:at 1659096575241) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |5 $ {} (:at 1659096603462) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                          |D $ {} (:at 1659096577889) (:by |rJoDgvdeG) (:text |nodejs?) (:type :leaf)
                          |L $ {} (:at 1659096609101) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1659096689349) (:by |rJoDgvdeG) (:text |swap!) (:type :leaf)
                              |T $ {} (:at 1659097403990) (:by |rJoDgvdeG) (:text |*style-list-in-nodejs) (:type :leaf)
                              |b $ {} (:at 1659096690410) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                              |h $ {} (:at 1659097590600) (:by |rJoDgvdeG) (:text |css-block) (:type :leaf)
                          |T $ {} (:at 1651175240132) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1651175240868) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                              |T $ {} (:at 1651175242467) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |b $ {} (:at 1651175284531) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175287528) (:by |rJoDgvdeG) (:text |style-el) (:type :leaf)
                                      |b $ {} (:at 1651175287942) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651175294053) (:by |rJoDgvdeG) (:text |js/document.createElement) (:type :leaf)
                                          |b $ {} (:at 1651175296327) (:by |rJoDgvdeG) (:text "|\"style") (:type :leaf)
                              |X $ {} (:at 1651175298729) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175304642) (:by |rJoDgvdeG) (:text |set!) (:type :leaf)
                                  |b $ {} (:at 1651175307704) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175309690) (:by |rJoDgvdeG) (:text |.-innerHTML) (:type :leaf)
                                      |b $ {} (:at 1651175311488) (:by |rJoDgvdeG) (:text |style-el) (:type :leaf)
                                  |h $ {} (:at 1651175316541) (:by |rJoDgvdeG) (:text |css-block) (:type :leaf)
                              |Z $ {} (:at 1651175725468) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175735768) (:by |rJoDgvdeG) (:text |set!) (:type :leaf)
                                  |b $ {} (:at 1651175736230) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175740907) (:by |rJoDgvdeG) (:text |.-id) (:type :leaf)
                                      |b $ {} (:at 1651175743179) (:by |rJoDgvdeG) (:text |style-el) (:type :leaf)
                                  |h $ {} (:at 1651175745298) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                              |b $ {} (:at 1651175261628) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175277547) (:by |rJoDgvdeG) (:text |js/document.head.appendChild) (:type :leaf)
                                  |b $ {} (:at 1651175282810) (:by |rJoDgvdeG) (:text |style-el) (:type :leaf)
                              |h $ {} (:at 1651175326714) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175341289) (:by |rJoDgvdeG) (:text |swap!) (:type :leaf)
                                  |b $ {} (:at 1651175347176) (:by |rJoDgvdeG) (:text |*style-caches) (:type :leaf)
                                  |h $ {} (:at 1651175350947) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                                  |l $ {} (:at 1651175359742) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                  |o $ {} (:at 1651175362547) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175362851) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1651175363926) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651175367765) (:by |rJoDgvdeG) (:text |:rules) (:type :leaf)
                                          |b $ {} (:at 1651175370605) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
                                      |h $ {} (:at 1651175371708) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651175374961) (:by |rJoDgvdeG) (:text |:el) (:type :leaf)
                                          |b $ {} (:at 1651175384722) (:by |rJoDgvdeG) (:text |style-el) (:type :leaf)
                      |b $ {} (:at 1659097593779) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
          |defstyle $ {} (:at 1651174523252) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651174631916) (:by |rJoDgvdeG) (:text |defmacro) (:type :leaf)
              |b $ {} (:at 1651174523252) (:by |rJoDgvdeG) (:text |defstyle) (:type :leaf)
              |h $ {} (:at 1651174523252) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651174665273) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                  |b $ {} (:at 1651174644648) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
              |i $ {} (:at 1651174843100) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651174843100) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |b $ {} (:at 1651174861992) (:by |rJoDgvdeG) (:text "|\"expected symbol of style-name") (:type :leaf)
                  |h $ {} (:at 1651174843100) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651174843100) (:by |rJoDgvdeG) (:text |symbol?) (:type :leaf)
                      |b $ {} (:at 1651175893994) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
              |l $ {} (:at 1651174697214) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1651174698002) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |L $ {} (:at 1651174698310) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |b $ {} (:at 1651174772326) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651180005690) (:by |rJoDgvdeG) (:text |style-name-str) (:type :leaf)
                          |b $ {} (:at 1651174774495) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651174775125) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                              |b $ {} (:at 1651175922028) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1651175924164) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                  |T $ {} (:at 1651174781253) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                              |e $ {} (:at 1651180054699) (:by |rJoDgvdeG) (:text "|\"__") (:type :leaf)
                              |j $ {} (:at 1651180059611) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1651180060742) (:by |rJoDgvdeG) (:text |.replace) (:type :leaf)
                                  |T $ {} (:at 1651180056561) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1651180058847) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                      |T $ {} (:at 1651180072405) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1651180073806) (:by |rJoDgvdeG) (:text |:ns) (:type :leaf)
                                          |T $ {} (:at 1651180055178) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651180434268) (:by |rJoDgvdeG) (:text |&extract-code-into-edn) (:type :leaf)
                                              |b $ {} (:at 1651180055178) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                  |b $ {} (:at 1651180063179) (:by |rJoDgvdeG) (:text "|\".") (:type :leaf)
                                  |h $ {} (:at 1651180064810) (:by |rJoDgvdeG) (:text "|\"_") (:type :leaf)
                  |T $ {} (:at 1651174645559) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651174650817) (:by |rJoDgvdeG) (:text |quasiquote) (:type :leaf)
                      |b $ {} (:at 1651174651752) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1651174678031) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
                          |T $ {} (:at 1651174671433) (:by |rJoDgvdeG) (:text |~style-name) (:type :leaf)
                          |b $ {} (:at 1651174680848) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651174685874) (:by |rJoDgvdeG) (:text |create-style!) (:type :leaf)
                              |X $ {} (:at 1651180009735) (:by |rJoDgvdeG) (:text |~style-name-str) (:type :leaf)
                              |b $ {} (:at 1651174691171) (:by |rJoDgvdeG) (:text |~rules) (:type :leaf)
          |nodejs? $ {} (:at 1659096578360) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1659096578360) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |b $ {} (:at 1659096578360) (:by |rJoDgvdeG) (:text |nodejs?) (:type :leaf)
              |h $ {} (:at 1659096578360) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1659096582166) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                  |b $ {} (:at 1659096583325) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1659096586316) (:by |rJoDgvdeG) (:text |exists?) (:type :leaf)
                      |b $ {} (:at 1659096589460) (:by |rJoDgvdeG) (:text |js/process) (:type :leaf)
                  |h $ {} (:at 1659096591188) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1659096599191) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                      |T $ {} (:at 1659096597875) (:by |rJoDgvdeG) (:text |js/process.release.name) (:type :leaf)
                      |b $ {} (:at 1659096601198) (:by |rJoDgvdeG) (:text "|\"node") (:type :leaf)
          |render-css-block $ {} (:at 1651175623744) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651175623744) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |b $ {} (:at 1651175623744) (:by |rJoDgvdeG) (:text |render-css-block) (:type :leaf)
              |h $ {} (:at 1651175623744) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651175623744) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                  |b $ {} (:at 1651175623744) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
              |l $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                  |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |rules) (:type :leaf)
                  |h $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651176245931) (:by |rJoDgvdeG) (:text |.map-list) (:type :leaf)
                      |b $ {} (:at 1651176257159) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1651176257752) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                          |L $ {} (:at 1651176280875) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651176281453) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                          |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651176266271) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                              |b $ {} (:at 1651176267414) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651176268477) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                      |X $ {} (:at 1651176270158) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651176271006) (:by |rJoDgvdeG) (:text |nth) (:type :leaf)
                                          |b $ {} (:at 1651176271581) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                          |h $ {} (:at 1651176272046) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
                                  |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651176276188) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                      |X $ {} (:at 1651176270158) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651176271006) (:by |rJoDgvdeG) (:text |nth) (:type :leaf)
                                          |b $ {} (:at 1651176271581) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                          |h $ {} (:at 1651176278188) (:by |rJoDgvdeG) (:text |1) (:type :leaf)
                              |h $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                                  |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\"expected rule name in string") (:type :leaf)
                                  |h $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |string?) (:type :leaf)
                                      |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                              |l $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                                  |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\"expected rule styles in map") (:type :leaf)
                                  |h $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |map?) (:type :leaf)
                                      |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                              |o $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                  |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |rule-name) (:type :leaf)
                                          |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |.!replace) (:type :leaf)
                                              |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                              |h $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\"$0") (:type :leaf)
                                              |l $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                      |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |css-line) (:type :leaf)
                                          |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651175814512) (:by |rJoDgvdeG) (:text |style->string) (:type :leaf)
                                              |b $ {} (:at 1651176091672) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1651176094174) (:by |rJoDgvdeG) (:text |.to-list) (:type :leaf)
                                                  |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                  |h $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                                      |X $ {} (:at 1651176406285) (:by |rJoDgvdeG) (:text "|\".") (:type :leaf)
                                      |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |rule-name) (:type :leaf)
                                      |h $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\" {") (:type :leaf)
                                      |l $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |&newline) (:type :leaf)
                                      |o $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |css-line) (:type :leaf)
                                      |q $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |&newline) (:type :leaf)
                                      |s $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\"}") (:type :leaf)
                  |l $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |.to-list) (:type :leaf)
                  |o $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |.join-str) (:type :leaf)
                      |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                          |b $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |&newline) (:type :leaf)
                          |h $ {} (:at 1651175625214) (:by |rJoDgvdeG) (:text |&newline) (:type :leaf)
        :ns $ {} (:at 1651174518020) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1651174518020) (:by |rJoDgvdeG) (:text |ns) (:type :leaf)
            |b $ {} (:at 1651174518020) (:by |rJoDgvdeG) (:text |respo.css) (:type :leaf)
            |h $ {} (:at 1651175808277) (:by |rJoDgvdeG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1651175809147) (:by |rJoDgvdeG) (:text |:require) (:type :leaf)
                |b $ {} (:at 1651175809751) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651175809751) (:by |rJoDgvdeG) (:text |respo.render.html) (:type :leaf)
                    |b $ {} (:at 1651175809751) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651175809751) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651175809751) (:by |rJoDgvdeG) (:text |style->string) (:type :leaf)
      |respo.cursor $ {}
        :defs $ {}
          |update-states $ {} (:at 1584871832107) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1584871832107) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1584871832107) (:by |rJoDgvdeG) (:text |update-states) (:type :leaf)
              |r $ {} (:at 1584871832107) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1584871837564) (:by |rJoDgvdeG) (:text |store) (:type :leaf)
                  |j $ {} (:at 1610032048827) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
              |v $ {} (:at 1610032033007) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610032033763) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |L $ {} (:at 1610032034023) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610032034178) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610032037887) (:by |rJoDgvdeG) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1610032038076) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610032039027) (:by |rJoDgvdeG) (:text |get) (:type :leaf)
                              |j $ {} (:at 1610032040532) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                              |r $ {} (:at 1610032041113) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
                      |j $ {} (:at 1610032042121) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610032044307) (:by |rJoDgvdeG) (:text |new-state) (:type :leaf)
                          |j $ {} (:at 1610032044643) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610032045086) (:by |rJoDgvdeG) (:text |get) (:type :leaf)
                              |j $ {} (:at 1610032046276) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                              |r $ {} (:at 1610032046562) (:by |rJoDgvdeG) (:text |1) (:type :leaf)
                  |T $ {} (:at 1584871847797) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1584872093061) (:by |rJoDgvdeG) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1584871855179) (:by |rJoDgvdeG) (:text |store) (:type :leaf)
                      |r $ {} (:at 1584871857834) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584871859467) (:by |rJoDgvdeG) (:text |concat) (:type :leaf)
                          |j $ {} (:at 1584871859709) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584871859893) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1584871863170) (:by |rJoDgvdeG) (:text |:states) (:type :leaf)
                          |r $ {} (:at 1584871878400) (:by |rJoDgvdeG) (:text |cursor) (:type :leaf)
                          |v $ {} (:at 1584871879289) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584871879508) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1584871880620) (:by |rJoDgvdeG) (:text |:data) (:type :leaf)
                      |v $ {} (:at 1584871883571) (:by |rJoDgvdeG) (:text |new-state) (:type :leaf)
        :ns $ {} (:at 1584871828389) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1584871828389) (:by |rJoDgvdeG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1584871828389) (:by |rJoDgvdeG) (:text |respo.cursor) (:type :leaf)
        :proc $ {} (:at 1584871828389) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
      |respo.main $ {}
        :defs $ {}
          |main! $ {} (:at 1511714064801) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511714147703) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1511714064801) (:by |rJoDgvdeG) (:text |main!) (:type :leaf)
              |r $ {} (:at 1511714064801) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
              |t $ {} (:at 1529814828134) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1612763814369) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |T $ {} (:at 1529814828532) (:by |root) (:text |handle-ssr!) (:type :leaf)
                  |j $ {} (:at 1529814837949) (:by |root) (:text |mount-target) (:type :leaf)
              |u $ {} (:at 1615274283893) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1615274288270) (:by |rJoDgvdeG) (:text |load-console-formatter!) (:type :leaf)
              |uT $ {} (:at 1645976086358) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645976088829) (:by |rJoDgvdeG) (:text |if-let) (:type :leaf)
                  |b $ {} (:at 1645976091853) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645976091853) (:by |rJoDgvdeG) (:text |raw) (:type :leaf)
                      |b $ {} (:at 1645976091853) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645976091853) (:by |rJoDgvdeG) (:text |js/window.localStorage.getItem) (:type :leaf)
                          |b $ {} (:at 1650634164619) (:by |rJoDgvdeG) (:text ||respo.calcit) (:type :leaf)
                  |h $ {} (:at 1645976093565) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1645976097593) (:by |rJoDgvdeG) (:text |swap!) (:type :leaf)
                      |b $ {} (:at 1645976097593) (:by |rJoDgvdeG) (:text |*store) (:type :leaf)
                      |h $ {} (:at 1645976097593) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                      |l $ {} (:at 1645976097593) (:by |rJoDgvdeG) (:text |:tasks) (:type :leaf)
                      |o $ {} (:at 1645976097593) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645976097593) (:by |rJoDgvdeG) (:text |parse-cirru-edn) (:type :leaf)
                          |b $ {} (:at 1645976097593) (:by |rJoDgvdeG) (:text |raw) (:type :leaf)
              |v $ {} (:at 1511714188800) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511714191933) (:by |rJoDgvdeG) (:text |render-app!) (:type :leaf)
                  |j $ {} (:at 1511714194378) (:by |rJoDgvdeG) (:text |mount-target) (:type :leaf)
              |w $ {} (:at 1511714210559) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511714197749) (:by |rJoDgvdeG) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1511714217070) (:by |rJoDgvdeG) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1511714219489) (:by |rJoDgvdeG) (:text |:rerender) (:type :leaf)
                  |v $ {} (:at 1612347101304) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1612347101873) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1612347102100) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612347103379) (:by |rJoDgvdeG) (:text |store) (:type :leaf)
                          |j $ {} (:at 1612347104458) (:by |rJoDgvdeG) (:text |prev) (:type :leaf)
                      |T $ {} (:at 1511714220597) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1511714232501) (:by |rJoDgvdeG) (:text |render-app!) (:type :leaf)
                          |r $ {} (:at 1511714235679) (:by |rJoDgvdeG) (:text |mount-target) (:type :leaf)
              |wT $ {} (:at 1511714240706) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1511714734746) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |T $ {} (:at 1511714243683) (:by |rJoDgvdeG) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1511714251576) (:by |rJoDgvdeG) (:text |*changes-logger) (:type :leaf)
                  |r $ {} (:at 1511714252645) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511714260040) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1511714260344) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511714261804) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                          |j $ {} (:at 1511714263034) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                          |r $ {} (:at 1511714264193) (:by |rJoDgvdeG) (:text |changes) (:type :leaf)
                      |r $ {} (:at 1511714265521) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1612761921981) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                          |r $ {} (:at 1511714272165) (:by |rJoDgvdeG) (:text |changes) (:type :leaf)
              |wj $ {} (:at 1511714274084) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511714275046) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                  |j $ {} (:at 1511714279547) (:by |rJoDgvdeG) (:text ||Loaded.) (:type :leaf)
                  |r $ {} (:at 1511714280283) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1643707524724) (:by |rJoDgvdeG) (:text |js/performance.now) (:type :leaf)
              |x $ {} (:at 1610285304683) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610285304683) (:by |rJoDgvdeG) (:text |aset) (:type :leaf)
                  |j $ {} (:at 1610285304683) (:by |rJoDgvdeG) (:text |js/window) (:type :leaf)
                  |r $ {} (:at 1610285304683) (:by |rJoDgvdeG) (:text ||onbeforeunload) (:type :leaf)
                  |v $ {} (:at 1612347118871) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1612347119459) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1612347119841) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612347120601) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                      |T $ {} (:at 1612347121576) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610285304683) (:by |rJoDgvdeG) (:text |save-store!) (:type :leaf)
          |mount-target $ {} (:at 1511714063789) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511714126882) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1511714063789) (:by |rJoDgvdeG) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1610284962044) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610284966288) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |L $ {} (:at 1610284966514) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610284969359) (:by |rJoDgvdeG) (:text |exists?) (:type :leaf)
                      |j $ {} (:at 1610284973062) (:by |rJoDgvdeG) (:text |js/document) (:type :leaf)
                  |T $ {} (:at 1511714063789) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511714131169) (:by |rJoDgvdeG) (:text |.querySelector) (:type :leaf)
                      |j $ {} (:at 1511714135296) (:by |rJoDgvdeG) (:text |js/document) (:type :leaf)
                      |r $ {} (:at 1511714138171) (:by |rJoDgvdeG) (:text ||.app) (:type :leaf)
                  |j $ {} (:at 1610284978780) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
          |reload! $ {} (:at 1511714076488) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511714076488) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1511714076488) (:by |rJoDgvdeG) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1511714076488) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
              |t $ {} (:at 1614697802769) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1614697806530) (:by |rJoDgvdeG) (:text |remove-watch) (:type :leaf)
                  |j $ {} (:at 1614697802769) (:by |rJoDgvdeG) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1614697802769) (:by |rJoDgvdeG) (:text |:rerender) (:type :leaf)
              |v $ {} (:at 1511714293542) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511714296695) (:by |rJoDgvdeG) (:text |clear-cache!) (:type :leaf)
              |x $ {} (:at 1511714297341) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511714299850) (:by |rJoDgvdeG) (:text |render-app!) (:type :leaf)
                  |j $ {} (:at 1511714301998) (:by |rJoDgvdeG) (:text |mount-target) (:type :leaf)
              |xT $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:text |:rerender) (:type :leaf)
                  |v $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:text |store) (:type :leaf)
                          |j $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:text |render-app!) (:type :leaf)
                          |j $ {} (:at 1614697800326) (:by |rJoDgvdeG) (:text |mount-target) (:type :leaf)
              |y $ {} (:at 1511714302367) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1622298909147) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                  |r $ {} (:at 1647336874527) (:by |rJoDgvdeG) (:text "||code updated.") (:type :leaf)
          |save-store! $ {} (:at 1511714070196) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511714070196) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1511714070196) (:by |rJoDgvdeG) (:text |save-store!) (:type :leaf)
              |r $ {} (:at 1511714070196) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
              |v $ {} (:at 1511714357501) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1643708667403) (:by |rJoDgvdeG) (:text |js/window.localStorage.setItem) (:type :leaf)
                  |r $ {} (:at 1610378543688) (:by |rJoDgvdeG) (:text ||respo.calcit) (:type :leaf)
                  |v $ {} (:at 1511714373782) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1643709060668) (:by |rJoDgvdeG) (:text |format-cirru-edn) (:type :leaf)
                      |j $ {} (:at 1511714376733) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511714377407) (:by |rJoDgvdeG) (:text |:tasks) (:type :leaf)
                          |j $ {} (:at 1511714380697) (:by |rJoDgvdeG) (:text |@*store) (:type :leaf)
        :ns $ {} (:at 1511714053436) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1511714053436) (:by |rJoDgvdeG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1511714053436) (:by |rJoDgvdeG) (:text |respo.main) (:type :leaf)
            |r $ {} (:at 1511714079782) (:by |rJoDgvdeG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1511714088676) (:by |rJoDgvdeG) (:text |:require) (:type :leaf)
                |j $ {} (:at 1511714088948) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1511714092170) (:by |rJoDgvdeG) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1511714092875) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1511714093124) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |r $ {} (:at 1511714101816) (:by |rJoDgvdeG) (:text |*changes-logger) (:type :leaf)
                        |v $ {} (:at 1610465510488) (:by |rJoDgvdeG) (:text |clear-cache!) (:type :leaf)
                |v $ {} (:at 1511714112837) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1511714115981) (:by |rJoDgvdeG) (:text |respo.app.core) (:type :leaf)
                    |r $ {} (:at 1511714117106) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1511714117398) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1511714120365) (:by |rJoDgvdeG) (:text |render-app!) (:type :leaf)
                        |r $ {} (:at 1511714122091) (:by |rJoDgvdeG) (:text |*store) (:type :leaf)
                |y $ {} (:at 1612763207855) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1612763215603) (:by |rJoDgvdeG) (:text |respo.app.core) (:type :leaf)
                    |r $ {} (:at 1612763217061) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1612763217245) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1612763217776) (:by |rJoDgvdeG) (:text |handle-ssr!) (:type :leaf)
        :proc $ {} (:at 1511714315065) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
      |respo.render.diff $ {}
        :defs $ {}
          |find-children-diffs $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |find-children-diffs) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                  |b $ {} (:at 1612023365031) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                  |r $ {} (:at 1622299170015) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text "||diff children:") (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                  |yT $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                  |yj $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |cond) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1612025174374) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612025178746) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                      |j $ {} (:at 1612025186047) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612025188058) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1612025192271) (:by |rJoDgvdeG) (:text |new-children) (:type :leaf)
                                  |L $ {} (:at 1612025193407) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612025193974) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                      |j $ {} (:at 1612025194591) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612025195997) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1612025196697) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                                      |j $ {} (:at 1612025199224) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612025200116) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                          |j $ {} (:at 1612025201965) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                  |j $ {} (:at 1612062320535) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612062322584) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                      |j $ {} (:at 1612062325825) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612062325825) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                          |j $ {} (:at 1612062325825) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                          |r $ {} (:at 1612062325825) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                  |j $ {} (:at 1513921250034) (:by |root) (:text |op/append-element) (:type :leaf)
                                  |n $ {} (:at 1612062328753) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                  |q $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                  |s $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                              |t $ {} (:at 1571582690804) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571582959786) (:by |rJoDgvdeG) (:text |collect-mounting) (:type :leaf)
                                  |j $ {} (:at 1571582690804) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                  |n $ {} (:at 1612108442121) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |r $ {} (:at 1572524606642) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1572524607706) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                      |T $ {} (:at 1571582690804) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                      |j $ {} (:at 1572524609158) (:by |rJoDgvdeG) (:text |index) (:type :leaf)
                                  |v $ {} (:at 1571582690804) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                                  |x $ {} (:at 1572885082770) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                              |v $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:text |recur) (:type :leaf)
                                  |j $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                  |n $ {} (:at 1612335825713) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |r $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                  |v $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:text |inc) (:type :leaf)
                                      |j $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:text |index) (:type :leaf)
                                  |x $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                  |y $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:text |rest) (:type :leaf)
                                      |j $ {} (:at 1571548137034) (:by |rJoDgvdeG) (:text |new-children) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                          |j $ {} (:at 1571548192525) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1612025266216) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                              |L $ {} (:at 1612025266596) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612025266924) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612025269824) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                      |j $ {} (:at 1612025270344) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612025273923) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1612025277904) (:by |rJoDgvdeG) (:text |old-children) (:type :leaf)
                                  |b $ {} (:at 1612062358633) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612062359010) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                      |j $ {} (:at 1612062359548) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612062360862) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1612062363840) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                  |j $ {} (:at 1612062355083) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612062357602) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                      |j $ {} (:at 1612062365065) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612062365897) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                          |j $ {} (:at 1612062366748) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                          |r $ {} (:at 1612062368144) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                  |r $ {} (:at 1612062403591) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612062411679) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                      |j $ {} (:at 1612062412522) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612062413340) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                          |j $ {} (:at 1612062415182) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                          |r $ {} (:at 1612062415897) (:by |rJoDgvdeG) (:text |index) (:type :leaf)
                              |T $ {} (:at 1571582695972) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571582962009) (:by |rJoDgvdeG) (:text |collect-unmounting) (:type :leaf)
                                  |j $ {} (:at 1571582702644) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                  |n $ {} (:at 1612108500678) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |r $ {} (:at 1612062421205) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                  |v $ {} (:at 1571582717267) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612025296715) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                      |j $ {} (:at 1612025297421) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                  |x $ {} (:at 1572885372123) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                  |j $ {} (:at 1513921255424) (:by |root) (:text |op/rm-element) (:type :leaf)
                                  |n $ {} (:at 1612062373016) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                  |q $ {} (:at 1612062427514) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                  |s $ {} (:at 1515769562002) (:by |root) (:text |nil) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                  |n $ {} (:at 1612023417017) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |[]) (:type :leaf)
                      |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610203061640) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |old-keys) (:type :leaf)
                                      |j $ {} (:at 1619541404659) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1619541406274) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                          |L $ {} (:at 1619541411642) (:by |rJoDgvdeG) (:text |old-children) (:type :leaf)
                                          |P $ {} (:at 1619541416988) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1619541416988) (:by |rJoDgvdeG) (:text |take) (:type :leaf)
                                              |j $ {} (:at 1619541416988) (:by |rJoDgvdeG) (:text |16) (:type :leaf)
                                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |map) (:type :leaf)
                                              |r $ {} (:at 1619541399383) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |new-keys) (:type :leaf)
                                      |j $ {} (:at 1619541420704) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1619541421564) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                          |L $ {} (:at 1619541422275) (:by |rJoDgvdeG) (:text |new-children) (:type :leaf)
                                          |P $ {} (:at 1619541431054) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1619541431054) (:by |rJoDgvdeG) (:text |take) (:type :leaf)
                                              |j $ {} (:at 1619541431054) (:by |rJoDgvdeG) (:text |16) (:type :leaf)
                                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |map) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |x1) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |old-keys) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |y1) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |new-keys) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |match-x1) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text |x1) (:type :leaf)
                                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |match-y1) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text |y1) (:type :leaf)
                                  |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |x1-remains?) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610212020126) (:by |rJoDgvdeG) (:text |any?) (:type :leaf)
                                          |b $ {} (:at 1619541438931) (:by |rJoDgvdeG) (:text |new-keys) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |match-x1) (:type :leaf)
                                  |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |y1-existed?) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610212022538) (:by |rJoDgvdeG) (:text |any?) (:type :leaf)
                                          |b $ {} (:at 1619541441434) (:by |rJoDgvdeG) (:text |old-keys) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |match-y1) (:type :leaf)
                                  |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                                  |yv $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
                              |n $ {} (:at 1628272966514) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1628272967489) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1628272975314) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628272976631) (:by |rJoDgvdeG) (:text |nil?) (:type :leaf)
                                      |j $ {} (:at 1628272978646) (:by |rJoDgvdeG) (:text |y1) (:type :leaf)
                                  |r $ {} (:at 1628272980058) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628273008161) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                                      |j $ {} (:at 1628272991062) (:by |rJoDgvdeG) (:text "|\"nil key is bad in Respo") (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                                  |r $ {} (:at 1551287512397) (:by |rJoDgvdeG) (:text "|\"compare:") (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |x1) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by |root) (:text |new-keys) (:type :leaf)
                                  |y $ {} (:at 1504774121421) (:by |root) (:text |x1-remains?) (:type :leaf)
                                  |yT $ {} (:at 1504774121421) (:by |root) (:text |y1) (:type :leaf)
                                  |yj $ {} (:at 1504774121421) (:by |root) (:text |y1-existed?) (:type :leaf)
                                  |yr $ {} (:at 1504774121421) (:by |root) (:text |old-keys) (:type :leaf)
                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |cond) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |=) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |x1) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by |root) (:text |y1) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |old-element) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1572885693960) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1572885697500) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |find-element-diffs) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |n $ {} (:at 1612023425463) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612023428348) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                                  |j $ {} (:at 1612023431556) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                  |r $ {} (:at 1612025356927) (:by |rJoDgvdeG) (:text |x1) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |conj) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by |root) (:text |old-element) (:type :leaf)
                                              |x $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
                                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |n $ {} (:at 1612023435023) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |inc) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                                              |x $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                              |y $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |x1-remains?) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |y1-existed?) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612025550498) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                          |b $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                                  |j $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:text |new-children) (:type :leaf)
                                              |j $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                                  |j $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                              |r $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                                                  |j $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                                      |j $ {} (:at 1612025552028) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                              |v $ {} (:at 1612108572638) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612108579302) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                                  |j $ {} (:at 1612108581739) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612108581739) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                                      |j $ {} (:at 1612108581739) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                      |r $ {} (:at 1612108581739) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                              |x $ {} (:at 1612108590676) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612108594659) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                                  |j $ {} (:at 1612108597590) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612108597590) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                                      |j $ {} (:at 1612108597590) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                                      |r $ {} (:at 1612108597590) (:by |rJoDgvdeG) (:text |index) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |j $ {} (:at 1513921551218) (:by |root) (:text |op/add-element) (:type :leaf)
                                              |n $ {} (:at 1612108585589) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                              |q $ {} (:at 1612108601257) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                              |s $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                                          |n $ {} (:at 1571582758137) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1571582965891) (:by |rJoDgvdeG) (:text |collect-mounting) (:type :leaf)
                                              |j $ {} (:at 1571582764523) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                              |n $ {} (:at 1612108609794) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |r $ {} (:at 1612108604300) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                              |v $ {} (:at 1571582780555) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1572885703161) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
                                                  |j $ {} (:at 1571582780555) (:by |rJoDgvdeG) (:text |new-children) (:type :leaf)
                                              |x $ {} (:at 1572885088913) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |n $ {} (:at 1612023458006) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |inc) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                                              |x $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                                              |y $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |x1-remains?) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by |root) (:text |y1-existed?) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612025398146) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                          |X $ {} (:at 1612025398467) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1612025399519) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612025400873) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                                  |j $ {} (:at 1612025401472) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612025402337) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1612025407147) (:by |rJoDgvdeG) (:text |old-children) (:type :leaf)
                                              |j $ {} (:at 1612025408406) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612025410265) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                                  |j $ {} (:at 1612025413286) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612025414900) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1612025415554) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                              |r $ {} (:at 1612108617842) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612108620663) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                                  |j $ {} (:at 1612108623039) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612108623039) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                                      |j $ {} (:at 1612108623039) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                      |r $ {} (:at 1612108623039) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                              |v $ {} (:at 1612108632587) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612108635579) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                                  |j $ {} (:at 1612108637588) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612108637588) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                                      |j $ {} (:at 1612108637588) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                                      |r $ {} (:at 1612108637588) (:by |rJoDgvdeG) (:text |index) (:type :leaf)
                                          |b $ {} (:at 1571582787203) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1571583014487) (:by |rJoDgvdeG) (:text |collect-unmounting) (:type :leaf)
                                              |j $ {} (:at 1571582793600) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                              |n $ {} (:at 1612108645833) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |r $ {} (:at 1612108639914) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                              |v $ {} (:at 1571582795684) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612025424677) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                                  |j $ {} (:at 1612025427157) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                              |x $ {} (:at 1572885377083) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |j $ {} (:at 1513921266639) (:by |root) (:text |op/rm-element) (:type :leaf)
                                              |n $ {} (:at 1612108630254) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                              |q $ {} (:at 1612108642878) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                              |s $ {} (:at 1515768863567) (:by |root) (:text |nil) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |n $ {} (:at 1612023469129) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                                              |x $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                              |y $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610203074111) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |xi) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1611302758907) (:by |rJoDgvdeG) (:text |index-of) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |new-keys) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |x1) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |yi) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1611302764201) (:by |rJoDgvdeG) (:text |index-of) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-keys) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |y1) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |first-old-entry) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |first-new-entry) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
                                              |y $ {} (:at 1612761976827) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612761976827) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                                  |j $ {} (:at 1612761976827) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612761976827) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                                      |j $ {} (:at 1612761976827) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                                      |r $ {} (:at 1612761976827) (:by |rJoDgvdeG) (:text |index) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |println) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text ||index:) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by |root) (:text |xi) (:type :leaf)
                                              |x $ {} (:at 1504774121421) (:by |root) (:text |yi) (:type :leaf)
                                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |<=) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |xi) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by |root) (:text |yi) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
                                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1572885715243) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
                                                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
                                                      |j $ {} (:at 1612761988756) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1612761988756) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                                          |j $ {} (:at 1612761988756) (:by |rJoDgvdeG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1612761988756) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                                              |j $ {} (:at 1612761988756) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                              |r $ {} (:at 1612761988756) (:by |rJoDgvdeG) (:text |y1) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                      |j $ {} (:at 1513921276379) (:by |root) (:text |op/add-element) (:type :leaf)
                                                      |n $ {} (:at 1612108747718) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                                      |q $ {} (:at 1612108766125) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                                      |s $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
                                                  |t $ {} (:at 1571582828154) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1571582971249) (:by |rJoDgvdeG) (:text |collect-mounting) (:type :leaf)
                                                      |j $ {} (:at 1571582836852) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                                      |n $ {} (:at 1612108753495) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                      |r $ {} (:at 1612108770805) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                                      |v $ {} (:at 1612108794925) (:by |rJoDgvdeG) (:text |new-element) (:type :leaf)
                                                      |x $ {} (:at 1572885091618) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                      |n $ {} (:at 1612023476591) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1504774121421) (:by |root) (:text |inc) (:type :leaf)
                                                          |j $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                                                      |x $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                                                      |y $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                                                  |b $ {} (:at 1571582848346) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1571582973650) (:by |rJoDgvdeG) (:text |collect-unmounting) (:type :leaf)
                                                      |j $ {} (:at 1571582860668) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                                      |n $ {} (:at 1612108814612) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                      |r $ {} (:at 1612108826873) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                                      |v $ {} (:at 1571582935452) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1572885723417) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
                                                          |T $ {} (:at 1571583030401) (:by |rJoDgvdeG) (:text |old-children) (:type :leaf)
                                                      |x $ {} (:at 1572885367597) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                      |j $ {} (:at 1513921280969) (:by |root) (:text |op/rm-element) (:type :leaf)
                                                      |n $ {} (:at 1612023502056) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1612023502056) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                                          |j $ {} (:at 1612023502056) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                          |r $ {} (:at 1612025492444) (:by |rJoDgvdeG) (:text |x1) (:type :leaf)
                                                      |q $ {} (:at 1612108842893) (:by |rJoDgvdeG) (:text |new-n-coord) (:type :leaf)
                                                      |s $ {} (:at 1515768853136) (:by |root) (:text |nil) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                      |n $ {} (:at 1612023478583) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                                      |v $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                                                      |x $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                                      |y $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
          |find-element-diffs $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |find-element-diffs) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                  |b $ {} (:at 1612022542179) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |old-tree) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |new-tree) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                  |r $ {} (:at 1622299164225) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text "||element diffing:") (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by |root) (:text |old-tree) (:type :leaf)
                  |yT $ {} (:at 1504774121421) (:by |root) (:text |new-tree) (:type :leaf)
              |w $ {} (:at 1612024396006) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1612061868577) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |T $ {} (:at 1612024397800) (:by |rJoDgvdeG) (:text |echo) (:type :leaf)
                  |j $ {} (:at 1612024401156) (:by |rJoDgvdeG) (:text "|\"element coord") (:type :leaf)
                  |r $ {} (:at 1612024402352) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |cond) (:type :leaf)
                  |b $ {} (:at 1571578648899) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571578647700) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571578647700) (:by |rJoDgvdeG) (:text |identical?) (:type :leaf)
                          |j $ {} (:at 1571578647700) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                          |r $ {} (:at 1571578647700) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                      |j $ {} (:at 1571578649980) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |f $ {} (:at 1571579214740) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571579216395) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571579216930) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                          |j $ {} (:at 1571579217869) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571579219233) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                              |j $ {} (:at 1571579221885) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                          |r $ {} (:at 1571579222419) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571579226141) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                              |j $ {} (:at 1571579227445) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                      |j $ {} (:at 1612022623788) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1612022627781) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                          |L $ {} (:at 1612022628177) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612022628407) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612022631631) (:by |rJoDgvdeG) (:text |next-coord) (:type :leaf)
                                  |j $ {} (:at 1612022631964) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612022633268) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                      |j $ {} (:at 1612022635545) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1612022636639) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1645978459519) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                          |j $ {} (:at 1612022641538) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                                          |n $ {} (:at 1645978362602) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                          |T $ {} (:at 1571579229992) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571579232236) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                              |j $ {} (:at 1571579232556) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571579232718) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                                  |j $ {} (:at 1571579242759) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645978462155) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                      |j $ {} (:at 1571579247947) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                      |n $ {} (:at 1645978373900) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                                  |r $ {} (:at 1571579248311) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1645978460799) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                      |j $ {} (:at 1571579251251) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                                      |n $ {} (:at 1645978368081) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                              |r $ {} (:at 1571579279318) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571579280813) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                                  |b $ {} (:at 1572153017092) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1572153017092) (:by |rJoDgvdeG) (:text |collect-updating) (:type :leaf)
                                      |j $ {} (:at 1572153017092) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1572153590044) (:by |rJoDgvdeG) (:text |:before-update) (:type :leaf)
                                      |p $ {} (:at 1612108005509) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1572153017092) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                      |v $ {} (:at 1572153017092) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                      |x $ {} (:at 1572153017092) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                                  |j $ {} (:at 1571579281503) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571579680435) (:by |rJoDgvdeG) (:text |find-element-diffs) (:type :leaf)
                                      |j $ {} (:at 1571579286484) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1612022654966) (:by |rJoDgvdeG) (:text |next-coord) (:type :leaf)
                                      |r $ {} (:at 1571579700711) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                      |v $ {} (:at 1571579290116) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571579303679) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                          |j $ {} (:at 1571579294951) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                      |x $ {} (:at 1571579296256) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571579300219) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                          |j $ {} (:at 1571579298455) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                                  |v $ {} (:at 1571584416898) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571584423843) (:by |rJoDgvdeG) (:text |collect-updating) (:type :leaf)
                                      |j $ {} (:at 1571584430949) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1572153593073) (:by |rJoDgvdeG) (:text |:update) (:type :leaf)
                                      |p $ {} (:at 1612108008281) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1571584432754) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                      |v $ {} (:at 1571584448513) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                      |x $ {} (:at 1571584450268) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                              |v $ {} (:at 1571645905707) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571645906812) (:by |root) (:text |do) (:type :leaf)
                                  |b $ {} (:at 1571645922814) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571645922814) (:by |root) (:text |collect-unmounting) (:type :leaf)
                                      |j $ {} (:at 1571645922814) (:by |root) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1612108019111) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1571645922814) (:by |root) (:text |n-coord) (:type :leaf)
                                      |v $ {} (:at 1571645922814) (:by |root) (:text |old-tree) (:type :leaf)
                                      |x $ {} (:at 1572885328550) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                                  |f $ {} (:at 1571645935128) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571645935128) (:by |root) (:text |find-element-diffs) (:type :leaf)
                                      |j $ {} (:at 1571645935128) (:by |root) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1612022784249) (:by |rJoDgvdeG) (:text |next-coord) (:type :leaf)
                                      |r $ {} (:at 1571645935128) (:by |root) (:text |n-coord) (:type :leaf)
                                      |v $ {} (:at 1571645935128) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571645935128) (:by |root) (:text |:tree) (:type :leaf)
                                          |j $ {} (:at 1571645935128) (:by |root) (:text |old-tree) (:type :leaf)
                                      |x $ {} (:at 1571645935128) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571645935128) (:by |root) (:text |:tree) (:type :leaf)
                                          |j $ {} (:at 1571645935128) (:by |root) (:text |new-tree) (:type :leaf)
                                  |j $ {} (:at 1571645912685) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571645912685) (:by |root) (:text |collect-mounting) (:type :leaf)
                                      |j $ {} (:at 1571645912685) (:by |root) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1612108015596) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1571645912685) (:by |root) (:text |n-coord) (:type :leaf)
                                      |v $ {} (:at 1571645912685) (:by |root) (:text |new-tree) (:type :leaf)
                                      |x $ {} (:at 1572885169032) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                  |h $ {} (:at 1571579369166) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571579412895) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571579413711) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                          |j $ {} (:at 1571579420089) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571579418442) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                              |j $ {} (:at 1571579419753) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                          |r $ {} (:at 1571579423899) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571579436539) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                              |j $ {} (:at 1571579428896) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                      |j $ {} (:at 1571579509807) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1571579510406) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                          |T $ {} (:at 1571579453096) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571582992163) (:by |rJoDgvdeG) (:text |collect-unmounting) (:type :leaf)
                              |j $ {} (:at 1571579471444) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                              |n $ {} (:at 1612022843332) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1612024201074) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                  |T $ {} (:at 1612022794236) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |j $ {} (:at 1612022846431) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645978467761) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                      |j $ {} (:at 1612022848964) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                      |n $ {} (:at 1645978379194) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                              |r $ {} (:at 1571579473607) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                              |v $ {} (:at 1571579477694) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                              |x $ {} (:at 1572885332862) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                          |j $ {} (:at 1571579515810) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571579520704) (:by |rJoDgvdeG) (:text |recur) (:type :leaf)
                              |j $ {} (:at 1571579524293) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                              |n $ {} (:at 1612022851942) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                              |r $ {} (:at 1571579527828) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                              |v $ {} (:at 1571579529176) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571579531491) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                  |j $ {} (:at 1571579533690) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                              |x $ {} (:at 1571579535765) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                  |i $ {} (:at 1571579539020) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571579539532) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571579540135) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                          |j $ {} (:at 1571579540339) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571579542913) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                              |j $ {} (:at 1571579545433) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                          |r $ {} (:at 1571579546794) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571579548581) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                              |j $ {} (:at 1571579550861) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                      |j $ {} (:at 1612022864884) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1612022866278) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                          |L $ {} (:at 1612022866549) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612022868446) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612022868212) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                  |j $ {} (:at 1612022869545) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612022870348) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                      |j $ {} (:at 1612022872610) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1612022873536) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1645978469762) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                          |j $ {} (:at 1612022876511) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                                          |n $ {} (:at 1645978385066) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                          |T $ {} (:at 1571579552338) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571579552653) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                              |b $ {} (:at 1571579593318) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571579608929) (:by |rJoDgvdeG) (:text |find-element-diffs) (:type :leaf)
                                  |j $ {} (:at 1571579615385) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                  |n $ {} (:at 1612022860460) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                  |r $ {} (:at 1571579618284) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                  |v $ {} (:at 1571579630006) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                  |x $ {} (:at 1571579630290) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571579631136) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                      |j $ {} (:at 1571579632528) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                              |j $ {} (:at 1571579553262) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571579569709) (:by |rJoDgvdeG) (:text |collect-mounting) (:type :leaf)
                                  |j $ {} (:at 1571579568348) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                  |n $ {} (:at 1612022891153) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |r $ {} (:at 1571579574796) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                  |v $ {} (:at 1571579592238) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                                  |x $ {} (:at 1572885184484) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571589511575) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571589515036) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                          |j $ {} (:at 1571589515289) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571589516447) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                              |j $ {} (:at 1571589517833) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                          |r $ {} (:at 1571589518194) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571589520220) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                              |j $ {} (:at 1571589521971) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                          |j $ {} (:at 1612108237928) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1643708967346) (:by |rJoDgvdeG) (:text |not=) (:type :leaf)
                              |j $ {} (:at 1612108237928) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645978471932) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                  |j $ {} (:at 1612108237928) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                  |n $ {} (:at 1645978393409) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                              |r $ {} (:at 1612108237928) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645978473377) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                  |j $ {} (:at 1612108237928) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                                  |n $ {} (:at 1645978390186) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                  |j $ {} (:at 1513921175999) (:by |root) (:text |op/replace-element) (:type :leaf)
                                  |n $ {} (:at 1612022896784) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |q $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                  |s $ {} (:at 1504774121421) (:by |root) (:text |new-tree) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |find-props-diffs) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                  |n $ {} (:at 1612022903939) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645978516488) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-tree) (:type :leaf)
                                      |n $ {} (:at 1645978515519) (:by |rJoDgvdeG) (:text |:attrs) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645978520925) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |new-tree) (:type :leaf)
                                      |n $ {} (:at 1645978519844) (:by |rJoDgvdeG) (:text |:attrs) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645978474949) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-tree) (:type :leaf)
                                              |n $ {} (:at 1645978400137) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645978476073) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-tree) (:type :leaf)
                                              |n $ {} (:at 1645978397234) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1643708970966) (:by |rJoDgvdeG) (:text |not=) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |find-style-diffs) (:type :leaf)
                                          |j $ {} (:at 1612023306195) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                          |l $ {} (:at 1612023539016) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                          |v $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                                          |x $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                              |v $ {} (:at 1612108375468) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1612108377301) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                  |L $ {} (:at 1612108383209) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:text |old-events) (:type :leaf)
                                          |j $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:text |keys-non-nil) (:type :leaf)
                                              |j $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                                                  |j $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1645978526075) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                                      |j $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                                      |n $ {} (:at 1645978525117) (:by |rJoDgvdeG) (:text |:event) (:type :leaf)
                                                  |r $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612108380442) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:text |new-events) (:type :leaf)
                                          |j $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:text |keys-non-nil) (:type :leaf)
                                              |j $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                                                  |j $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1645978529011) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                                      |j $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                                                      |n $ {} (:at 1645978528313) (:by |rJoDgvdeG) (:text |:event) (:type :leaf)
                                                  |r $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1612108388368) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1612108389559) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1612108391136) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                                      |L $ {} (:at 1612108392023) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1643708972589) (:by |rJoDgvdeG) (:text |not=) (:type :leaf)
                                          |j $ {} (:at 1612108394550) (:by |rJoDgvdeG) (:text |old-events) (:type :leaf)
                                          |r $ {} (:at 1612108396033) (:by |rJoDgvdeG) (:text |new-events) (:type :leaf)
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |added-events) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |difference) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |new-events) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |old-events) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |removed-events) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |difference) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-events) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |new-events) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610211999382) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                                              |j $ {} (:at 1511710841172) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |added-events) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                  |j $ {} (:at 1513921161203) (:by |root) (:text |op/set-event) (:type :leaf)
                                                  |n $ {} (:at 1612023343415) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                  |q $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                                  |s $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610212003787) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                                              |j $ {} (:at 1511710845572) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |removed-events) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                  |j $ {} (:at 1513921163620) (:by |root) (:text |op/rm-event) (:type :leaf)
                                                  |n $ {} (:at 1612023540996) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                  |q $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                                  |s $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                              |x $ {} (:at 1612108274561) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1612108275324) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                  |L $ {} (:at 1612108275893) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612108275893) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612108275893) (:by |rJoDgvdeG) (:text |old-children) (:type :leaf)
                                          |j $ {} (:at 1612108275893) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645978456694) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                              |j $ {} (:at 1612108275893) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                              |n $ {} (:at 1645978407724) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
                                      |j $ {} (:at 1612108275893) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612108275893) (:by |rJoDgvdeG) (:text |new-children) (:type :leaf)
                                          |j $ {} (:at 1612108275893) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645978455719) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                              |j $ {} (:at 1612108275893) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                                              |n $ {} (:at 1645978410819) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |find-children-diffs) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1612023543988) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by |root) (:text |0) (:type :leaf)
                                      |x $ {} (:at 1504774121421) (:by |root) (:text |old-children) (:type :leaf)
                                      |y $ {} (:at 1504774121421) (:by |root) (:text |new-children) (:type :leaf)
                  |x $ {} (:at 1571589523056) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610203084320) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                      |j $ {} (:at 1571589526796) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571589534169) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                          |j $ {} (:at 1571589550969) (:by |rJoDgvdeG) (:text "|\"Diffing unknown params") (:type :leaf)
                          |r $ {} (:at 1571589568660) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                          |v $ {} (:at 1571589570160) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
          |find-props-diffs $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |find-props-diffs) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                  |b $ {} (:at 1612023275897) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |old-props) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |new-props) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |L $ {} (:at 1612063772016) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                  |r $ {} (:at 1622299151166) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text "||find props:") (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                  |y $ {} (:at 1504774121421) (:by |root) (:text |old-props) (:type :leaf)
                  |yT $ {} (:at 1504774121421) (:by |root) (:text |new-props) (:type :leaf)
                  |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |count) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-props) (:type :leaf)
                  |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |count) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |new-props) (:type :leaf)
              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-props) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-props) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |cond) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                  |j $ {} (:at 1513921191482) (:by |root) (:text |op/add-prop) (:type :leaf)
                                  |n $ {} (:at 1612023278640) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |q $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                  |s $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |new-props) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                  |n $ {} (:at 1612023280676) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |old-props) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |new-props) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                  |j $ {} (:at 1513921195177) (:by |root) (:text |op/rm-prop) (:type :leaf)
                                  |n $ {} (:at 1612023287795) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |q $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                  |s $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612338177061) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |old-props) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                  |n $ {} (:at 1612023289130) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-props) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by |root) (:text |new-props) (:type :leaf)
                      |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610203098048) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |n $ {} (:at 1610028885607) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610028887117) (:by |rJoDgvdeG) (:text |old-pair) (:type :leaf)
                                      |j $ {} (:at 1610028890612) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610028890612) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1610028890612) (:by |rJoDgvdeG) (:text |old-props) (:type :leaf)
                                  |p $ {} (:at 1610028892208) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610028894541) (:by |rJoDgvdeG) (:text |new-pair) (:type :leaf)
                                      |j $ {} (:at 1610028897585) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610028897585) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1610028897585) (:by |rJoDgvdeG) (:text |new-props) (:type :leaf)
                                  |q $ {} (:at 1610028899485) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610028934342) (:by |rJoDgvdeG) (:text |old-k) (:type :leaf)
                                      |j $ {} (:at 1610028934727) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610028935611) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1610028937927) (:by |rJoDgvdeG) (:text |old-pair) (:type :leaf)
                                  |qT $ {} (:at 1610028899485) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610028944272) (:by |rJoDgvdeG) (:text |old-v) (:type :leaf)
                                      |j $ {} (:at 1610028934727) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610028946583) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                          |j $ {} (:at 1610028937927) (:by |rJoDgvdeG) (:text |old-pair) (:type :leaf)
                                  |qj $ {} (:at 1610028950386) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610028951222) (:by |rJoDgvdeG) (:text |new-k) (:type :leaf)
                                      |j $ {} (:at 1610028951990) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610028953512) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1610028956962) (:by |rJoDgvdeG) (:text |new-pair) (:type :leaf)
                                  |qr $ {} (:at 1610028958012) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610028959014) (:by |rJoDgvdeG) (:text |new-v) (:type :leaf)
                                      |j $ {} (:at 1610028959608) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610028960544) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                          |j $ {} (:at 1610028961994) (:by |rJoDgvdeG) (:text |new-pair) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |old-props) (:type :leaf)
                                  |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |new-props) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |;) (:type :leaf)
                                  |r $ {} (:at 1622299226791) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by |root) (:text |old-k) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by |root) (:text |new-k) (:type :leaf)
                                  |y $ {} (:at 1504774121421) (:by |root) (:text |old-v) (:type :leaf)
                                  |yT $ {} (:at 1504774121421) (:by |root) (:text |new-v) (:type :leaf)
                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643704311561) (:by |rJoDgvdeG) (:text |case-default) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647337375706) (:by |rJoDgvdeG) (:text |&compare) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-k) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |new-k) (:type :leaf)
                                  |n $ {} (:at 1643704289088) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1643704290119) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1643704301611) (:by |rJoDgvdeG) (:text "|\"[Respo] unknown result") (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |-1) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |j $ {} (:at 1513921198544) (:by |root) (:text |op/rm-prop) (:type :leaf)
                                              |n $ {} (:at 1612023292019) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |q $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                              |s $ {} (:at 1504774121421) (:by |root) (:text |old-k) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |n $ {} (:at 1612023293865) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                              |x $ {} (:at 1504774121421) (:by |root) (:text |new-props) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |1) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |j $ {} (:at 1513921201567) (:by |root) (:text |op/add-prop) (:type :leaf)
                                              |n $ {} (:at 1612023296106) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |q $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                              |s $ {} (:at 1612063557247) (:by |rJoDgvdeG) (:text |new-pair) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |n $ {} (:at 1612023297662) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by |root) (:text |old-props) (:type :leaf)
                                              |x $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
                                  |x $ {} (:at 1610028978091) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1610028980201) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1643708953061) (:by |rJoDgvdeG) (:text |not=) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |old-v) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by |root) (:text |new-v) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                  |j $ {} (:at 1513921581049) (:by |root) (:text |op/replace-prop) (:type :leaf)
                                                  |n $ {} (:at 1612023977746) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                  |q $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                                  |s $ {} (:at 1612063560645) (:by |rJoDgvdeG) (:text |new-pair) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                              |n $ {} (:at 1612023298913) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                                              |v $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                              |x $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
          |find-style-diffs $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |find-style-diffs) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                  |b $ {} (:at 1612023311303) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |identical?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |cond) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |follows) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                      |j $ {} (:at 1513921217146) (:by |root) (:text |op/add-style) (:type :leaf)
                                      |n $ {} (:at 1612023314622) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                      |q $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                      |s $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1612023315908) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                                      |x $ {} (:at 1504774121421) (:by |root) (:text |follows) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |was-empty?) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |now-empty?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |follows) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                      |j $ {} (:at 1513921220868) (:by |root) (:text |op/rm-style) (:type :leaf)
                                      |n $ {} (:at 1612023318220) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                      |q $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                      |s $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610611986331) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1612023319647) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by |root) (:text |follows) (:type :leaf)
                                      |x $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                          |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610203103040) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |old-entry) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |new-entry) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1643704357282) (:by |rJoDgvdeG) (:text |case-default) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1647337412864) (:by |rJoDgvdeG) (:text |&compare) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610611988946) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-entry) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610611989976) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-entry) (:type :leaf)
                                      |n $ {} (:at 1643704358751) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1643704360827) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                                          |j $ {} (:at 1647337429008) (:by |rJoDgvdeG) (:text "|\"[Respo] unknown compare result for style keys") (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |-1) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                  |j $ {} (:at 1513921225016) (:by |root) (:text |op/rm-style) (:type :leaf)
                                                  |n $ {} (:at 1612023321472) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                                  |q $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                                  |s $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610611991413) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |old-entry) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                  |n $ {} (:at 1612023323656) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                                  |v $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                                  |x $ {} (:at 1504774121421) (:by |root) (:text |new-style) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |1) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                  |j $ {} (:at 1513921227292) (:by |root) (:text |op/add-style) (:type :leaf)
                                                  |n $ {} (:at 1612023328359) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                                  |q $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                                  |s $ {} (:at 1504774121421) (:by |root) (:text |new-entry) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                  |n $ {} (:at 1612023329999) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                                  |v $ {} (:at 1504774121421) (:by |root) (:text |old-style) (:type :leaf)
                                                  |x $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
                                      |x $ {} (:at 1610029030691) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1610029031459) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
                                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |do) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1504774121421) (:by |root) (:text |identical?) (:type :leaf)
                                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610611997460) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                                              |j $ {} (:at 1504774121421) (:by |root) (:text |old-entry) (:type :leaf)
                                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610611999043) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                                              |j $ {} (:at 1504774121421) (:by |root) (:text |new-entry) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                      |j $ {} (:at 1513921229870) (:by |root) (:text |op/replace-style) (:type :leaf)
                                                      |n $ {} (:at 1612023334789) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                                      |q $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                                      |s $ {} (:at 1504774121421) (:by |root) (:text |new-entry) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |collect!) (:type :leaf)
                                                  |n $ {} (:at 1612023331711) (:by |rJoDgvdeG) (:text |c-coord) (:type :leaf)
                                                  |r $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                                                  |v $ {} (:at 1504774121421) (:by |root) (:text |old-follows) (:type :leaf)
                                                  |x $ {} (:at 1504774121421) (:by |root) (:text |new-follows) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.render.diff) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |purify-element) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.detect) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                        |r $ {} (:at 1571579443379) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                |y $ {} (:at 1513921141140) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1513921149310) (:by |root) (:text |respo.schema.op) (:type :leaf)
                    |r $ {} (:at 1513921149871) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1513921150205) (:by |root) (:text |op) (:type :leaf)
                |yr $ {} (:at 1571584589156) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1571584594409) (:by |rJoDgvdeG) (:text |respo.render.effect) (:type :leaf)
                    |r $ {} (:at 1571584596307) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1571584596477) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1571584600097) (:by |rJoDgvdeG) (:text |collect-mounting) (:type :leaf)
                        |r $ {} (:at 1571584605204) (:by |rJoDgvdeG) (:text |collect-updating) (:type :leaf)
                        |v $ {} (:at 1571584609629) (:by |rJoDgvdeG) (:text |collect-unmounting) (:type :leaf)
                |yv $ {} (:at 1572885674931) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1572885674931) (:by |rJoDgvdeG) (:text |respo.util.list) (:type :leaf)
                    |r $ {} (:at 1572885674931) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1572885674931) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1572885674931) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.render.dom $ {}
        :defs $ {}
          |make-element $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |make-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |virtual-element) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                  |n $ {} (:at 1612022050881) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
              |t $ {} (:at 1612022087754) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612022090724) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1612022096540) (:by |rJoDgvdeG) (:text "|\"coord is required") (:type :leaf)
                  |r $ {} (:at 1612022098593) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1612022102505) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                      |T $ {} (:at 1612022098125) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
              |v $ {} (:at 1612020844418) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1612020845406) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |L $ {} (:at 1612020845931) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612020850079) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                      |j $ {} (:at 1612020854854) (:by |rJoDgvdeG) (:text |virtual-element) (:type :leaf)
                  |P $ {} (:at 1612020856045) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612021159249) (:by |rJoDgvdeG) (:text |make-element) (:type :leaf)
                      |j $ {} (:at 1612020902681) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1645979324597) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                          |T $ {} (:at 1612020860572) (:by |rJoDgvdeG) (:text |virtual-element) (:type :leaf)
                          |b $ {} (:at 1645979322954) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                      |r $ {} (:at 1612020863121) (:by |rJoDgvdeG) (:text |listener-builder) (:type :leaf)
                      |v $ {} (:at 1612020864193) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612020865861) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                          |j $ {} (:at 1612020867341) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                          |r $ {} (:at 1612020868254) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645979313225) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                              |j $ {} (:at 1612020873918) (:by |rJoDgvdeG) (:text |virtual-element) (:type :leaf)
                              |n $ {} (:at 1645979309361) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |tag-name) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610190774281) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1645979319635) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |virtual-element) (:type :leaf)
                                      |n $ {} (:at 1645979317538) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645979294654) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |virtual-element) (:type :leaf)
                                  |n $ {} (:at 1645979295648) (:by |rJoDgvdeG) (:text |:attrs) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |style) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645979299948) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |virtual-element) (:type :leaf)
                                  |n $ {} (:at 1645979298078) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |children) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645979306134) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |virtual-element) (:type :leaf)
                                  |n $ {} (:at 1645979302209) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
                          |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |b $ {} (:at 1643708457553) (:by |rJoDgvdeG) (:text |js/document.createElement) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |tag-name) (:type :leaf)
                          |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |child-elements) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1619540312307) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |children) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |map) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610029968842) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                          |n $ {} (:at 1645977020346) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645977022973) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                                              |b $ {} (:at 1645977032127) (:by |rJoDgvdeG) (:text "|\"expect pair of key/element") (:type :leaf)
                                              |h $ {} (:at 1645977036451) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1645977037654) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                                                  |b $ {} (:at 1645977039841) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1645977040601) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                                                      |b $ {} (:at 1645977042048) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                                  |h $ {} (:at 1645977042547) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1645977044905) (:by |rJoDgvdeG) (:text |&=) (:type :leaf)
                                                      |b $ {} (:at 1645977045753) (:by |rJoDgvdeG) (:text |2) (:type :leaf)
                                                      |h $ {} (:at 1645977046268) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1645977047651) (:by |rJoDgvdeG) (:text |count) (:type :leaf)
                                                          |b $ {} (:at 1645977048296) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                          |r $ {} (:at 1610029955816) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1612062757369) (:by |rJoDgvdeG) (:text |let[]) (:type :leaf)
                                              |H $ {} (:at 1612062758251) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1612062759143) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                                  |j $ {} (:at 1612062760114) (:by |rJoDgvdeG) (:text |child) (:type :leaf)
                                              |J $ {} (:at 1612062762790) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                              |O $ {} (:at 1628272781577) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1628272784524) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                                                  |j $ {} (:at 1628272785234) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1628272786498) (:by |rJoDgvdeG) (:text |nil?) (:type :leaf)
                                                      |j $ {} (:at 1628272787174) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                                  |r $ {} (:at 1628272788102) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1628272815056) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                                                      |j $ {} (:at 1628272836461) (:by |rJoDgvdeG) (:text "|\"nil key is bad for Respo") (:type :leaf)
                                              |T $ {} (:at 1571497234163) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1571590120955) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                                                  |L $ {} (:at 1571497235375) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1571590116440) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                                                      |j $ {} (:at 1571497237959) (:by |rJoDgvdeG) (:text |child) (:type :leaf)
                                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |make-element) (:type :leaf)
                                                      |f $ {} (:at 1571497232967) (:by |rJoDgvdeG) (:text |child) (:type :leaf)
                                                      |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                                                      |v $ {} (:at 1612018956220) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1612018956907) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                                          |j $ {} (:at 1612018958719) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                                          |r $ {} (:at 1612018960165) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610191896915) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                          |j $ {} (:at 1511710860110) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |k) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610191954872) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |v) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |last) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                              |r $ {} (:at 1505374985363) (:by |root) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1505374986462) (:by |root) (:text |if) (:type :leaf)
                                  |L $ {} (:at 1505374987219) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1505374988848) (:by |root) (:text |some?) (:type :leaf)
                                      |j $ {} (:at 1505374989216) (:by |root) (:text |v) (:type :leaf)
                                  |T $ {} (:at 1541076675970) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1541076675970) (:by |root) (:text |aset) (:type :leaf)
                                      |j $ {} (:at 1541076675970) (:by |root) (:text |element) (:type :leaf)
                                      |r $ {} (:at 1541076675970) (:by |root) (:text |k) (:type :leaf)
                                      |v $ {} (:at 1541076675970) (:by |root) (:text |v) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610191908650) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                          |j $ {} (:at 1511710862329) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |style) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1613290335425) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1613290336787) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                      |j $ {} (:at 1613290339729) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1613290339729) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                          |j $ {} (:at 1613290339729) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1613290339729) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1613290339729) (:by |rJoDgvdeG) (:text |entry) (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |k) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                                          |j $ {} (:at 1613290343407) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |v) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |last) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |aset) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1623582306411) (:by |rJoDgvdeG) (:text |.-style) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |k) (:type :leaf)
                                  |v $ {} (:at 1613290359578) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1613290359578) (:by |rJoDgvdeG) (:text |get-style-value) (:type :leaf)
                                      |j $ {} (:at 1613290359578) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                      |r $ {} (:at 1614697683371) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                      |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610191910805) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                          |j $ {} (:at 1511710866263) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1623584104389) (:by |rJoDgvdeG) (:text |entry) (:type :leaf)
                              |j $ {} (:at 1623584102520) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1645979340438) (:by |rJoDgvdeG) (:text |&record:get) (:type :leaf)
                                  |j $ {} (:at 1623584102520) (:by |rJoDgvdeG) (:text |virtual-element) (:type :leaf)
                                  |n $ {} (:at 1645979332404) (:by |rJoDgvdeG) (:text |:event) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1623584106186) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1623584109099) (:by |rJoDgvdeG) (:text |event-name) (:type :leaf)
                                      |j $ {} (:at 1623584109376) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1623584110032) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1623584111705) (:by |rJoDgvdeG) (:text |entry) (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |name-in-string) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |event->prop) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |aset) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |name-in-string) (:type :leaf)
                                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                                          |r $ {} (:at 1612018980216) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1622298951999) (:by |rJoDgvdeG) (:text |.!stopPropagation) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                      |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610191927473) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1504774121421) (:by |root) (:text |child-element) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |child-elements) (:type :leaf)
                          |r $ {} (:at 1610194965908) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610194967094) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                              |L $ {} (:at 1610194967568) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610194968356) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1610194970311) (:by |rJoDgvdeG) (:text |child-element) (:type :leaf)
                              |T $ {} (:at 1610194936664) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1622298955108) (:by |rJoDgvdeG) (:text |.!appendChild) (:type :leaf)
                                  |j $ {} (:at 1610194936664) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                                  |r $ {} (:at 1610194936664) (:by |rJoDgvdeG) (:text |child-element) (:type :leaf)
                      |yT $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
          |style->string $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style->string) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |styles) (:type :leaf)
              |t $ {} (:at 1647336674746) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1647336685743) (:by |rJoDgvdeG) (:text |apply-args) (:type :leaf)
                  |b $ {} (:at 1647336688837) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1647336689457) (:by |rJoDgvdeG) (:text "|\"") (:type :leaf)
                      |b $ {} (:at 1647336805648) (:by |rJoDgvdeG) (:text |styles) (:type :leaf)
                  |h $ {} (:at 1647336698162) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1647336699655) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1647336699909) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647336701891) (:by |rJoDgvdeG) (:text |acc) (:type :leaf)
                          |b $ {} (:at 1647336703260) (:by |rJoDgvdeG) (:text |xs) (:type :leaf)
                      |h $ {} (:at 1647336704934) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647336709457) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                          |b $ {} (:at 1647336709914) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1647336713270) (:by |rJoDgvdeG) (:text |empty?) (:type :leaf)
                              |b $ {} (:at 1647336721692) (:by |rJoDgvdeG) (:text |xs) (:type :leaf)
                          |h $ {} (:at 1647336724257) (:by |rJoDgvdeG) (:text |acc) (:type :leaf)
                          |l $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                              |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1647336737483) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647336738191) (:by |rJoDgvdeG) (:text |entry) (:type :leaf)
                                      |b $ {} (:at 1647336738521) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1647336739183) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |b $ {} (:at 1647336739788) (:by |rJoDgvdeG) (:text |xs) (:type :leaf)
                                  |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                      |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |entry) (:type :leaf)
                                  |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                      |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                          |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                  |h $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                      |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |get-style-value) (:type :leaf)
                                          |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                              |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |entry) (:type :leaf)
                                          |h $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                              |h $ {} (:at 1647336743909) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1647336745114) (:by |rJoDgvdeG) (:text |recur) (:type :leaf)
                                  |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                                      |X $ {} (:at 1647336759201) (:by |rJoDgvdeG) (:text |acc) (:type :leaf)
                                      |b $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                      |h $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text ||:) (:type :leaf)
                                      |l $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                      |o $ {} (:at 1647336735698) (:by |rJoDgvdeG) (:text ||;) (:type :leaf)
                                  |b $ {} (:at 1647336768087) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647336768954) (:by |rJoDgvdeG) (:text |rest) (:type :leaf)
                                      |b $ {} (:at 1647336773208) (:by |rJoDgvdeG) (:text |xs) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.render.dom) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |event->prop) (:type :leaf)
                        |x $ {} (:at 1613290197216) (:by |rJoDgvdeG) (:text |get-style-value) (:type :leaf)
                |v $ {} (:at 1612020913904) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1612020934647) (:by |rJoDgvdeG) (:text |respo.util.detect) (:type :leaf)
                    |r $ {} (:at 1612020926615) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1612020927304) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1612020929515) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.render.effect $ {}
        :defs $ {}
          |collect-mounting $ {} (:at 1571579646781) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1571579646781) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1571579646781) (:by |rJoDgvdeG) (:text |collect-mounting) (:type :leaf)
              |r $ {} (:at 1571579646781) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571579646781) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                  |b $ {} (:at 1612023688961) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |j $ {} (:at 1571579646781) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                  |r $ {} (:at 1572885009953) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                  |v $ {} (:at 1572885011584) (:by |rJoDgvdeG) (:text |at-place?) (:type :leaf)
              |v $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |cond) (:type :leaf)
                  |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                          |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                      |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                          |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                                  |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |:effects) (:type :leaf)
                                      |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                              |j $ {} (:at 1612107749840) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612107755098) (:by |rJoDgvdeG) (:text |next-coord) (:type :leaf)
                                  |j $ {} (:at 1612107755943) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612107757361) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                      |j $ {} (:at 1612107761637) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1612107762571) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612107763242) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1612107764981) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                          |r $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610193541011) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                              |j $ {} (:at 1610193541705) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1610193542323) (:by |rJoDgvdeG) (:text |not) (:type :leaf)
                                  |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |empty?) (:type :leaf)
                                      |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                              |r $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610207682705) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                                  |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |effect) (:type :leaf)
                                      |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                                  |r $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                      |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |method) (:type :leaf)
                                              |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |:method) (:type :leaf)
                                                  |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |effect) (:type :leaf)
                                      |r $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                          |j $ {} (:at 1572521849228) (:by |rJoDgvdeG) (:text |op/effect-mount) (:type :leaf)
                                          |n $ {} (:at 1612107768192) (:by |rJoDgvdeG) (:text |next-coord) (:type :leaf)
                                          |q $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                          |s $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                                              |r $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |method) (:type :leaf)
                                                  |r $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |:args) (:type :leaf)
                                                      |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |effect) (:type :leaf)
                                                  |v $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                                      |j $ {} (:at 1571586823190) (:by |rJoDgvdeG) (:text |:mount) (:type :leaf)
                                                      |r $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                                                      |x $ {} (:at 1572885046062) (:by |rJoDgvdeG) (:text |at-place?) (:type :leaf)
                          |v $ {} (:at 1571590471520) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571590474481) (:by |rJoDgvdeG) (:text |recur) (:type :leaf)
                              |j $ {} (:at 1571590471520) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                              |n $ {} (:at 1612107774840) (:by |rJoDgvdeG) (:text |next-coord) (:type :leaf)
                              |r $ {} (:at 1571590471520) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                              |v $ {} (:at 1571590471520) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571590471520) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                  |j $ {} (:at 1571590471520) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                              |x $ {} (:at 1572885120720) (:by |rJoDgvdeG) (:text |false) (:type :leaf)
                  |r $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                          |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                      |b $ {} (:at 1643708328415) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1643708331165) (:by |rJoDgvdeG) (:text |apply-args) (:type :leaf)
                          |j $ {} (:at 1643708332361) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1643708334529) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643708334529) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
                                  |j $ {} (:at 1643708334529) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                              |j $ {} (:at 1643708337951) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
                          |r $ {} (:at 1643708340744) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1643708342071) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1643708342535) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643708343886) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                  |j $ {} (:at 1643708344657) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                              |r $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                                  |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |not) (:type :leaf)
                                      |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |empty?) (:type :leaf)
                                          |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                  |r $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                      |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                              |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                                  |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                          |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                              |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                                  |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |collect-mounting) (:type :leaf)
                                          |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                          |r $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                              |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                              |r $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                          |v $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                              |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                              |r $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                                          |x $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                              |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                          |y $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |false) (:type :leaf)
                                  |v $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |recur) (:type :leaf)
                                      |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |rest) (:type :leaf)
                                          |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                      |r $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |inc) (:type :leaf)
                                          |j $ {} (:at 1643708368551) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                  |v $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610203210490) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                      |j $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                          |j $ {} (:at 1571586829665) (:by |rJoDgvdeG) (:text "|\"Unknown entry for mounting:") (:type :leaf)
                          |r $ {} (:at 1571586818321) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
          |collect-unmounting $ {} (:at 1571579661718) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1571579661718) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1571579661718) (:by |rJoDgvdeG) (:text |collect-unmounting) (:type :leaf)
              |r $ {} (:at 1571579661718) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571579661718) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                  |b $ {} (:at 1612022741282) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |j $ {} (:at 1571579661718) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                  |r $ {} (:at 1571586343497) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                  |v $ {} (:at 1572885289598) (:by |rJoDgvdeG) (:text |at-place?) (:type :leaf)
              |v $ {} (:at 1571585891342) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571585896817) (:by |rJoDgvdeG) (:text |cond) (:type :leaf)
                  |j $ {} (:at 1571585897081) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571585897489) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571585899319) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                          |j $ {} (:at 1571586347005) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                      |j $ {} (:at 1571585913161) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571586629562) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                          |b $ {} (:at 1571586629954) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571586630229) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571586631810) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                                  |j $ {} (:at 1571586633045) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586647427) (:by |rJoDgvdeG) (:text |:effects) (:type :leaf)
                                      |j $ {} (:at 1571586649034) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                              |j $ {} (:at 1612022722486) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612022726520) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                  |j $ {} (:at 1612022728753) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612022731185) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                      |j $ {} (:at 1612022734197) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1612022734545) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612022735321) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1612022736016) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                          |f $ {} (:at 1571590486108) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571590488915) (:by |rJoDgvdeG) (:text |collect-unmounting) (:type :leaf)
                              |j $ {} (:at 1571590486108) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                              |n $ {} (:at 1612022691999) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                              |r $ {} (:at 1571590486108) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                              |v $ {} (:at 1571590486108) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571590486108) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                  |j $ {} (:at 1571590486108) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                              |x $ {} (:at 1572885305363) (:by |rJoDgvdeG) (:text |false) (:type :leaf)
                          |j $ {} (:at 1571586677962) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610212209040) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                              |L $ {} (:at 1610212209464) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1610212210200) (:by |rJoDgvdeG) (:text |not) (:type :leaf)
                                  |T $ {} (:at 1571586680081) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586683132) (:by |rJoDgvdeG) (:text |empty?) (:type :leaf)
                                      |j $ {} (:at 1571586684883) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                              |T $ {} (:at 1571586686158) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1610212258016) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                                  |L $ {} (:at 1571586689267) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586692741) (:by |rJoDgvdeG) (:text |effect) (:type :leaf)
                                      |j $ {} (:at 1571586694161) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                                  |T $ {} (:at 1571586699776) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1571586700336) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                      |L $ {} (:at 1571586700535) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571586700660) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1571586701749) (:by |rJoDgvdeG) (:text |method) (:type :leaf)
                                              |j $ {} (:at 1571586702038) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1571586703741) (:by |rJoDgvdeG) (:text |:method) (:type :leaf)
                                                  |j $ {} (:at 1571586705413) (:by |rJoDgvdeG) (:text |effect) (:type :leaf)
                                      |T $ {} (:at 1571585914395) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571585915897) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                          |j $ {} (:at 1572521863394) (:by |rJoDgvdeG) (:text |op/effect-unmount) (:type :leaf)
                                          |n $ {} (:at 1612022752914) (:by |rJoDgvdeG) (:text |new-coord) (:type :leaf)
                                          |q $ {} (:at 1571586777956) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                          |s $ {} (:at 1571585928880) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1571585936925) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1571585937176) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1571585938055) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                                              |r $ {} (:at 1571585939168) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1571586730363) (:by |rJoDgvdeG) (:text |method) (:type :leaf)
                                                  |r $ {} (:at 1571586738020) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1571586738785) (:by |rJoDgvdeG) (:text |:args) (:type :leaf)
                                                      |j $ {} (:at 1571586740012) (:by |rJoDgvdeG) (:text |effect) (:type :leaf)
                                                  |v $ {} (:at 1571586741797) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1571586742046) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                                      |j $ {} (:at 1571586744576) (:by |rJoDgvdeG) (:text |:unmount) (:type :leaf)
                                                      |r $ {} (:at 1594556676527) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                                                      |x $ {} (:at 1572885460369) (:by |rJoDgvdeG) (:text |at-place?) (:type :leaf)
                  |r $ {} (:at 1571585951623) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571585954185) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571585956221) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                          |j $ {} (:at 1571586348710) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                      |j $ {} (:at 1571585998763) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571586319279) (:by |rJoDgvdeG) (:text |loop) (:type :leaf)
                          |j $ {} (:at 1571586320116) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571586320266) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571586332867) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                  |j $ {} (:at 1571586334158) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586338117) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
                                      |j $ {} (:at 1571586341745) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
                              |j $ {} (:at 1571586428636) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571586430733) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                                  |j $ {} (:at 1571586431496) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
                          |r $ {} (:at 1571586534778) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610212212388) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                              |L $ {} (:at 1610212212898) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1610212213927) (:by |rJoDgvdeG) (:text |not) (:type :leaf)
                                  |T $ {} (:at 1571586535981) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586537607) (:by |rJoDgvdeG) (:text |empty?) (:type :leaf)
                                      |j $ {} (:at 1571586539932) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                              |P $ {} (:at 1612108073229) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1612108073964) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                  |L $ {} (:at 1612108074207) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1612108074440) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612108075531) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                          |j $ {} (:at 1612108075981) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1612108077435) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1612108078493) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                      |j $ {} (:at 1612108081512) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612108081941) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1612108083440) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1612108083322) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                              |j $ {} (:at 1612108084538) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                  |T $ {} (:at 1571586563209) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586836392) (:by |rJoDgvdeG) (:text |collect-unmounting) (:type :leaf)
                                      |j $ {} (:at 1571586569624) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                      |n $ {} (:at 1612022762219) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1612022763346) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                          |T $ {} (:at 1612022761840) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                          |j $ {} (:at 1612108086899) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                      |r $ {} (:at 1571586574715) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571586578893) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                                          |j $ {} (:at 1571586581173) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                          |r $ {} (:at 1571586582687) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                                      |v $ {} (:at 1571586595529) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1612108090882) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                          |j $ {} (:at 1612108093613) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                      |x $ {} (:at 1572885308599) (:by |rJoDgvdeG) (:text |false) (:type :leaf)
                              |T $ {} (:at 1571586517651) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571586496005) (:by |rJoDgvdeG) (:text |recur) (:type :leaf)
                                  |n $ {} (:at 1571586616498) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586617696) (:by |rJoDgvdeG) (:text |rest) (:type :leaf)
                                      |j $ {} (:at 1571586618983) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                  |r $ {} (:at 1571586614232) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571586614561) (:by |rJoDgvdeG) (:text |inc) (:type :leaf)
                                      |j $ {} (:at 1571586615527) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                  |v $ {} (:at 1571585959871) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610203189216) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                      |j $ {} (:at 1571585960839) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571585970462) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                          |j $ {} (:at 1571585993654) (:by |rJoDgvdeG) (:text "|\"Unknown entry for unmounting:") (:type :leaf)
                          |r $ {} (:at 1571586798958) (:by |rJoDgvdeG) (:text |tree) (:type :leaf)
          |collect-updating $ {} (:at 1571584455918) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1571584455918) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1571584455918) (:by |rJoDgvdeG) (:text |collect-updating) (:type :leaf)
              |r $ {} (:at 1571584455918) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571584455918) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                  |b $ {} (:at 1572153040835) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                  |f $ {} (:at 1612022578597) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |j $ {} (:at 1571584455918) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                  |r $ {} (:at 1571584455918) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                  |v $ {} (:at 1571584455918) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
              |t $ {} (:at 1612107961115) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612107962405) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1612107967455) (:by |rJoDgvdeG) (:text "|\"expects component") (:type :leaf)
                  |r $ {} (:at 1612107968132) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612107970464) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                      |j $ {} (:at 1612107973136) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
              |v $ {} (:at 1571584694613) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1571584698291) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |L $ {} (:at 1571584698512) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571584698805) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571584700271) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                          |j $ {} (:at 1571584700545) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571584701972) (:by |rJoDgvdeG) (:text |:effects) (:type :leaf)
                              |j $ {} (:at 1571584703782) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                      |j $ {} (:at 1612107975312) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612107979707) (:by |rJoDgvdeG) (:text |next-coord) (:type :leaf)
                          |j $ {} (:at 1612107980803) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612107983668) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                              |j $ {} (:at 1612107984966) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                              |r $ {} (:at 1612107985552) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612107986175) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1612108160096) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                  |P $ {} (:at 1571584705125) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610211826818) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                      |j $ {} (:at 1610211827287) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1610211830328) (:by |rJoDgvdeG) (:text |not) (:type :leaf)
                          |T $ {} (:at 1571584708362) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571584711219) (:by |rJoDgvdeG) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1571584712799) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                      |r $ {} (:at 1571584716485) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1571585862241) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                          |T $ {} (:at 1571584716485) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                          |j $ {} (:at 1571590555841) (:by |rJoDgvdeG) (:text "|\"collect update") (:type :leaf)
                          |n $ {} (:at 1571584719536) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                          |r $ {} (:at 1571584716485) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571584716485) (:by |rJoDgvdeG) (:text |:effects) (:type :leaf)
                              |j $ {} (:at 1571584716485) (:by |rJoDgvdeG) (:text |new-tree) (:type :leaf)
                      |v $ {} (:at 1571584751804) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610212047512) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                          |j $ {} (:at 1571584773130) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571584975056) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                              |j $ {} (:at 1571584885264) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571584885903) (:by |rJoDgvdeG) (:text |range) (:type :leaf)
                                  |j $ {} (:at 1571584886318) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571584887014) (:by |rJoDgvdeG) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1571584927299) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                          |r $ {} (:at 1571584950008) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571584952057) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                              |j $ {} (:at 1571584999530) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571584952455) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571584955591) (:by |rJoDgvdeG) (:text |old-effect) (:type :leaf)
                                      |j $ {} (:at 1571584955875) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571585003308) (:by |rJoDgvdeG) (:text |get-in) (:type :leaf)
                                          |j $ {} (:at 1571584964889) (:by |rJoDgvdeG) (:text |old-tree) (:type :leaf)
                                          |r $ {} (:at 1571584969652) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1571584969947) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1571584971523) (:by |rJoDgvdeG) (:text |:effects) (:type :leaf)
                                              |r $ {} (:at 1571584976765) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                                  |j $ {} (:at 1571585004226) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571585008192) (:by |rJoDgvdeG) (:text |new-effect) (:type :leaf)
                                      |j $ {} (:at 1571585019690) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571585020331) (:by |rJoDgvdeG) (:text |get) (:type :leaf)
                                          |j $ {} (:at 1571585022098) (:by |rJoDgvdeG) (:text |effects) (:type :leaf)
                                          |r $ {} (:at 1571585023418) (:by |rJoDgvdeG) (:text |idx) (:type :leaf)
                                  |r $ {} (:at 1571585029571) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571585030641) (:by |rJoDgvdeG) (:text |method) (:type :leaf)
                                      |j $ {} (:at 1571585031352) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571585034416) (:by |rJoDgvdeG) (:text |:method) (:type :leaf)
                                          |j $ {} (:at 1571585185787) (:by |rJoDgvdeG) (:text |new-effect) (:type :leaf)
                              |n $ {} (:at 1571585169272) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1571585865038) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                                  |T $ {} (:at 1571585170099) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1571585172869) (:by |rJoDgvdeG) (:text |old-effect) (:type :leaf)
                                  |r $ {} (:at 1571585176218) (:by |rJoDgvdeG) (:text |new-effect) (:type :leaf)
                              |r $ {} (:at 1572083095144) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1610212058088) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                                  |L $ {} (:at 1610212058703) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1610212059402) (:by |rJoDgvdeG) (:text |not) (:type :leaf)
                                      |T $ {} (:at 1572083102323) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1572083103443) (:by |rJoDgvdeG) (:text |=seq) (:type :leaf)
                                          |j $ {} (:at 1572083129368) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1572083131013) (:by |rJoDgvdeG) (:text |:args) (:type :leaf)
                                              |j $ {} (:at 1572083133653) (:by |rJoDgvdeG) (:text |new-effect) (:type :leaf)
                                          |r $ {} (:at 1572083134287) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1572083136426) (:by |rJoDgvdeG) (:text |:args) (:type :leaf)
                                              |j $ {} (:at 1572083139307) (:by |rJoDgvdeG) (:text |old-effect) (:type :leaf)
                                  |T $ {} (:at 1571585292071) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1571585293850) (:by |rJoDgvdeG) (:text |collect!) (:type :leaf)
                                      |T $ {} (:at 1572521875365) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1572521876770) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                          |j $ {} (:at 1572521878149) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1572521878916) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1572521879907) (:by |rJoDgvdeG) (:text |:update) (:type :leaf)
                                              |r $ {} (:at 1572521882253) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                                          |r $ {} (:at 1572521891228) (:by |rJoDgvdeG) (:text |op/effect-update) (:type :leaf)
                                          |v $ {} (:at 1572521896805) (:by |rJoDgvdeG) (:text |op/effect-before-update) (:type :leaf)
                                      |b $ {} (:at 1612107997359) (:by |rJoDgvdeG) (:text |next-coord) (:type :leaf)
                                      |h $ {} (:at 1571585066870) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                      |l $ {} (:at 1571585127485) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1571585127762) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1571585128067) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1571585131288) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                                          |r $ {} (:at 1571585131846) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1571585136028) (:by |rJoDgvdeG) (:text |method) (:type :leaf)
                                              |j $ {} (:at 1571585137281) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1571585138840) (:by |rJoDgvdeG) (:text |:args) (:type :leaf)
                                                  |j $ {} (:at 1571585141953) (:by |rJoDgvdeG) (:text |new-effect) (:type :leaf)
                                              |v $ {} (:at 1571585150952) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1571585151241) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1572153043669) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                                                  |r $ {} (:at 1571585163761) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
        :ns $ {} (:at 1571584552862) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1571584552862) (:by |rJoDgvdeG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1571584552862) (:by |rJoDgvdeG) (:text |respo.render.effect) (:type :leaf)
            |r $ {} (:at 1571585076407) (:by |rJoDgvdeG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1571585077120) (:by |rJoDgvdeG) (:text |:require) (:type :leaf)
                |j $ {} (:at 1571585077332) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1571585107681) (:by |rJoDgvdeG) (:text |respo.schema.op) (:type :leaf)
                    |p $ {} (:at 1571585109673) (:by |rJoDgvdeG) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1571585110835) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                |r $ {} (:at 1571585876619) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1571585881514) (:by |rJoDgvdeG) (:text |respo.util.detect) (:type :leaf)
                    |r $ {} (:at 1571585882695) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1571585882869) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1571585885737) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                        |r $ {} (:at 1571585888334) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                        |v $ {} (:at 1572083125844) (:by |rJoDgvdeG) (:text |=seq) (:type :leaf)
                |v $ {} (:at 1572885775286) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1572885779772) (:by |rJoDgvdeG) (:text |respo.util.list) (:type :leaf)
                    |r $ {} (:at 1572885780572) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1572885780888) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1572885781518) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
        :proc $ {} (:at 1571584552862) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
      |respo.render.html $ {}
        :defs $ {}
          |element->string $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |element->string) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |tag-name) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610287168609) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |P $ {} (:at 1610287930130) (:by |rJoDgvdeG) (:text |pairs-map) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:attrs) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |styles) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610289009104) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |text-inside) (:type :leaf)
                          |j $ {} (:at 1512356708165) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1512356709151) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                              |L $ {} (:at 1512356709603) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1512356709729) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                                  |r $ {} (:at 1512356722395) (:by |rJoDgvdeG) (:text |:textarea) (:type :leaf)
                              |P $ {} (:at 1512356723117) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1512356727951) (:by |rJoDgvdeG) (:text |escape-html) (:type :leaf)
                                  |j $ {} (:at 1512356856748) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1512356856393) (:by |rJoDgvdeG) (:text |:value) (:type :leaf)
                                      |j $ {} (:at 1512356863457) (:by |rJoDgvdeG) (:text |attrs) (:type :leaf)
                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610289011778) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:innerHTML) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |text->html) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                      |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |tailored-props) (:type :leaf)
                          |j $ {} (:at 1643708564892) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1647338398570) (:by |rJoDgvdeG) (:text |&let) (:type :leaf)
                              |T $ {} (:at 1643708568307) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643708570374) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                                  |b $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |attrs) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |dissoc) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |:innerHTML) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |dissoc) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |:inner-text) (:type :leaf)
                              |j $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:text |empty?) (:type :leaf)
                                      |j $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:text |styles) (:type :leaf)
                                  |r $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                                  |v $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                                      |r $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                      |v $ {} (:at 1643708574226) (:by |rJoDgvdeG) (:text |styles) (:type :leaf)
                      |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |props-in-string) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |props->string) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |tailored-props) (:type :leaf)
                  |n $ {} (:at 1625579782265) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1625579888048) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                      |T $ {} (:at 1625579889062) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1625579934537) (:by |rJoDgvdeG) (:text |&set:includes?) (:type :leaf)
                          |T $ {} (:at 1625579787296) (:by |rJoDgvdeG) (:text |self-closing) (:type :leaf)
                          |j $ {} (:at 1625579897814) (:by |rJoDgvdeG) (:text |tag-name) (:type :leaf)
                      |j $ {} (:at 1625579901219) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1625579901219) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                          |j $ {} (:at 1625579901219) (:by |rJoDgvdeG) (:text ||<) (:type :leaf)
                          |r $ {} (:at 1625579901219) (:by |rJoDgvdeG) (:text |tag-name) (:type :leaf)
                          |v $ {} (:at 1625579901219) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1625579901219) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                              |j $ {} (:at 1647338443508) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1647338443508) (:by |rJoDgvdeG) (:text |blank?) (:type :leaf)
                                  |b $ {} (:at 1647338443508) (:by |rJoDgvdeG) (:text |props-in-string) (:type :leaf)
                              |n $ {} (:at 1647338434731) (:by |rJoDgvdeG) (:text ||) (:type :leaf)
                              |r $ {} (:at 1625579901219) (:by |rJoDgvdeG) (:text "|| ") (:type :leaf)
                          |x $ {} (:at 1625579901219) (:by |rJoDgvdeG) (:text |props-in-string) (:type :leaf)
                          |y $ {} (:at 1625580373330) (:by |rJoDgvdeG) (:text "|| >") (:type :leaf)
                      |r $ {} (:at 1625579931485) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1625579937268) (:by |rJoDgvdeG) (:text |&let) (:type :leaf)
                          |L $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1625579947826) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                              |j $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
                                      |j $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
                                  |r $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                                      |j $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |entry) (:type :leaf)
                                          |r $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                              |j $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |child) (:type :leaf)
                                                      |j $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                                          |j $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |entry) (:type :leaf)
                                              |r $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |element->string) (:type :leaf)
                                                  |j $ {} (:at 1625579939145) (:by |rJoDgvdeG) (:text |child) (:type :leaf)
                          |T $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                              |j $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text ||<) (:type :leaf)
                              |r $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text |tag-name) (:type :leaf)
                              |v $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                  |b $ {} (:at 1647338471411) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1647338471411) (:by |rJoDgvdeG) (:text |blank?) (:type :leaf)
                                      |b $ {} (:at 1647338471411) (:by |rJoDgvdeG) (:text |props-in-string) (:type :leaf)
                                  |f $ {} (:at 1647338472662) (:by |rJoDgvdeG) (:text "|\"") (:type :leaf)
                                  |r $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text "|| ") (:type :leaf)
                                  |v $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text ||) (:type :leaf)
                              |x $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text |props-in-string) (:type :leaf)
                              |y $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text ||>) (:type :leaf)
                              |yT $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                                  |j $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text |text-inside) (:type :leaf)
                                  |r $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text |join-str) (:type :leaf)
                                      |j $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                      |r $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text ||) (:type :leaf)
                              |yj $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text ||</) (:type :leaf)
                              |yr $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text |tag-name) (:type :leaf)
                              |yv $ {} (:at 1625579902065) (:by |rJoDgvdeG) (:text ||>) (:type :leaf)
          |entry->string $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |entry->string) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |k) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |v) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |last) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |prop->attr) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610289060967) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |k) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text ||=) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623693894637) (:by |rJoDgvdeG) (:text |.escape) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1508599040218) (:by |root) (:text |cond) (:type :leaf)
                              |j $ {} (:at 1508599040686) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |k) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |style->string) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |v) (:type :leaf)
                              |v $ {} (:at 1508599021605) (:by |root) (:type :expr)
                                :data $ {}
                                  |L $ {} (:at 1508599023893) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610289091650) (:by |rJoDgvdeG) (:text |bool?) (:type :leaf)
                                      |j $ {} (:at 1508599027170) (:by |root) (:text |v) (:type :leaf)
                                  |P $ {} (:at 1508599029941) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1508599030568) (:by |root) (:text |str) (:type :leaf)
                                      |j $ {} (:at 1508599031475) (:by |root) (:text |v) (:type :leaf)
                              |w $ {} (:at 1508599021605) (:by |root) (:type :expr)
                                :data $ {}
                                  |L $ {} (:at 1508599023893) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1508599060138) (:by |root) (:text |number?) (:type :leaf)
                                      |j $ {} (:at 1508599027170) (:by |root) (:text |v) (:type :leaf)
                                  |P $ {} (:at 1508599029941) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1508599030568) (:by |root) (:text |str) (:type :leaf)
                                      |j $ {} (:at 1508599031475) (:by |root) (:text |v) (:type :leaf)
                              |wT $ {} (:at 1508599021605) (:by |root) (:type :expr)
                                :data $ {}
                                  |L $ {} (:at 1508599023893) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1508599131810) (:by |root) (:text |keyword?) (:type :leaf)
                                      |j $ {} (:at 1508599027170) (:by |root) (:text |v) (:type :leaf)
                                  |P $ {} (:at 1508599029941) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610289064493) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                      |j $ {} (:at 1508599031475) (:by |root) (:text |v) (:type :leaf)
                              |wj $ {} (:at 1508599159698) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1508599163749) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1508599165979) (:by |root) (:text |string?) (:type :leaf)
                                      |j $ {} (:at 1508599166869) (:by |root) (:text |v) (:type :leaf)
                                  |j $ {} (:at 1508599234789) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1508599235651) (:by |root) (:text |escape-html) (:type :leaf)
                                      |T $ {} (:at 1508599169148) (:by |root) (:text |v) (:type :leaf)
                              |x $ {} (:at 1508599049536) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610203169002) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                                  |j $ {} (:at 1508599161467) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1508599162298) (:by |root) (:text |str) (:type :leaf)
                                      |T $ {} (:at 1508599051449) (:by |root) (:text |v) (:type :leaf)
          |escape-html $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |escape-html) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |text) (:type :leaf)
              |v $ {} (:at 1512356884509) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1512356885476) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |L $ {} (:at 1512356886561) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1512356888690) (:by |rJoDgvdeG) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1512356889535) (:by |rJoDgvdeG) (:text |text) (:type :leaf)
                  |P $ {} (:at 1596102369852) (:by |rJoDgvdeG) (:text "|\"") (:type :leaf)
                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |->) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |text) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623412070977) (:by |rJoDgvdeG) (:text |.replace) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text "||\"") (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text ||&quot;) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623412072880) (:by |rJoDgvdeG) (:text |.replace) (:type :leaf)
                          |j $ {} (:at 1512356539277) (:by |rJoDgvdeG) (:text ||<) (:type :leaf)
                          |r $ {} (:at 1512356541439) (:by |rJoDgvdeG) (:text ||&lt;) (:type :leaf)
                      |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623412074386) (:by |rJoDgvdeG) (:text |.replace) (:type :leaf)
                          |j $ {} (:at 1512356543433) (:by |rJoDgvdeG) (:text ||>) (:type :leaf)
                          |r $ {} (:at 1512356546006) (:by |rJoDgvdeG) (:text ||&gt;) (:type :leaf)
                      |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623412075612) (:by |rJoDgvdeG) (:text |.replace) (:type :leaf)
                          |j $ {} (:at 1610290907026) (:by |rJoDgvdeG) (:text |&newline) (:type :leaf)
                          |r $ {} (:at 1596102589821) (:by |rJoDgvdeG) (:text "|\"&#13;&#10;") (:type :leaf)
          |make-string $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |make-string) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612012140901) (:by |rJoDgvdeG) (:text |element) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |element->string) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |purify-element) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |mute-element) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
          |props->string $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |props->string) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |props) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1619541584495) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |props) (:type :leaf)
                  |p $ {} (:at 1628626025644) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1628626025644) (:by |rJoDgvdeG) (:text |.to-list) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |filter) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610286036259) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                          |r $ {} (:at 1610286020849) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610286021564) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                              |L $ {} (:at 1610286021768) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610286021941) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610286022133) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                      |j $ {} (:at 1610286023147) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610286023849) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1610286025524) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                  |j $ {} (:at 1610286026081) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610286026599) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                      |j $ {} (:at 1610286026981) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610286033497) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                          |j $ {} (:at 1610286029863) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                              |T $ {} (:at 1592797286599) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1592797287302) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                                  |L $ {} (:at 1592797287684) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592797288707) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                                      |j $ {} (:at 1592797289060) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |not) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1619542543700) (:by |rJoDgvdeG) (:text |starts-with?) (:type :leaf)
                                          |b $ {} (:at 1619542547145) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1619542574914) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                              |j $ {} (:at 1619542547145) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1619542576248) (:by |rJoDgvdeG) (:text ||on-) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |map) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |entry->string) (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610285926671) (:by |rJoDgvdeG) (:text |join-str) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text "|| ") (:type :leaf)
          |self-closing $ {} (:at 1625579791816) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1625579791816) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1625579791816) (:by |rJoDgvdeG) (:text |self-closing) (:type :leaf)
              |r $ {} (:at 1625579791816) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1625579797088) (:by |rJoDgvdeG) (:text |#{}) (:type :leaf)
                  |j $ {} (:at 1625579799094) (:by |rJoDgvdeG) (:text "|\"area") (:type :leaf)
                  |r $ {} (:at 1625579801378) (:by |rJoDgvdeG) (:text "|\"base") (:type :leaf)
                  |v $ {} (:at 1625579808671) (:by |rJoDgvdeG) (:text "|\"br") (:type :leaf)
                  |x $ {} (:at 1625579810522) (:by |rJoDgvdeG) (:text "|\"col") (:type :leaf)
                  |y $ {} (:at 1625579812929) (:by |rJoDgvdeG) (:text "|\"embed") (:type :leaf)
                  |yT $ {} (:at 1625579815376) (:by |rJoDgvdeG) (:text "|\"hr") (:type :leaf)
                  |yj $ {} (:at 1625579817610) (:by |rJoDgvdeG) (:text "|\"img") (:type :leaf)
                  |yr $ {} (:at 1625579818625) (:by |rJoDgvdeG) (:text "|\"input") (:type :leaf)
                  |yv $ {} (:at 1625579819955) (:by |rJoDgvdeG) (:text "|\"link") (:type :leaf)
                  |yx $ {} (:at 1625579821907) (:by |rJoDgvdeG) (:text "|\"meta") (:type :leaf)
                  |yy $ {} (:at 1625579822976) (:by |rJoDgvdeG) (:text "|\"param") (:type :leaf)
                  |yyT $ {} (:at 1625579825169) (:by |rJoDgvdeG) (:text "|\"source") (:type :leaf)
                  |yyj $ {} (:at 1625579827647) (:by |rJoDgvdeG) (:text "|\"track") (:type :leaf)
                  |yyr $ {} (:at 1625579829632) (:by |rJoDgvdeG) (:text "|\"wbr") (:type :leaf)
          |style->string $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style->string) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |styles) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1619541599812) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |styles) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1625826309275) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |k) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                                  |b $ {} (:at 1613290141181) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1613290142519) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                      |j $ {} (:at 1613290142923) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1613290145505) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                          |j $ {} (:at 1613290147728) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |v) (:type :leaf)
                                      |j $ {} (:at 1613290165024) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1613290165829) (:by |rJoDgvdeG) (:text |get-style-value) (:type :leaf)
                                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |last) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                                          |j $ {} (:at 1614697705681) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1614697709553) (:by |rJoDgvdeG) (:text |dashed->camel) (:type :leaf)
                                              |T $ {} (:at 1613290854409) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                                  |f $ {} (:at 1613290150922) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text ||:) (:type :leaf)
                                  |v $ {} (:at 1613290173324) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1613290173324) (:by |rJoDgvdeG) (:text |escape-html) (:type :leaf)
                                      |j $ {} (:at 1613290173324) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                  |x $ {} (:at 1504774121421) (:by |root) (:text ||;) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610285982170) (:by |rJoDgvdeG) (:text |join-str) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.render.html) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |prop->attr) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |purify-element) (:type :leaf)
                        |v $ {} (:at 1504774121421) (:by |root) (:text |mute-element) (:type :leaf)
                        |y $ {} (:at 1504774121421) (:by |root) (:text |text->html) (:type :leaf)
                        |yT $ {} (:at 1613290193899) (:by |rJoDgvdeG) (:text |get-style-value) (:type :leaf)
                        |yj $ {} (:at 1614697715262) (:by |rJoDgvdeG) (:text |dashed->camel) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.detect) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |element?) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.render.patch $ {}
        :defs $ {}
          |add-element $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |add-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                  |v $ {} (:at 1612022182370) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |make-element) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                              |v $ {} (:at 1612022188312) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |r $ {} (:at 1647336931337) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1647336933160) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                      |L $ {} (:at 1647336935008) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647336935008) (:by |rJoDgvdeG) (:text |.-parentElement) (:type :leaf)
                          |b $ {} (:at 1647336935008) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1622299029389) (:by |rJoDgvdeG) (:text |.!insertBefore) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
          |add-event $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |add-event) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1612064541697) (:by |rJoDgvdeG) (:text |event-name) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                  |v $ {} (:at 1612064579926) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
              |v $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645976504938) (:by |rJoDgvdeG) (:text |&let) (:type :leaf)
                  |j $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |event-prop) (:type :leaf)
                      |b $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |event->prop) (:type :leaf)
                          |j $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |event-name) (:type :leaf)
                  |r $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |aset) (:type :leaf)
                      |j $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                      |r $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |event-prop) (:type :leaf)
                      |v $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                          |r $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |listener-builder) (:type :leaf)
                                  |j $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |event-name) (:type :leaf)
                              |j $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                              |r $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                          |v $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1622299014311) (:by |rJoDgvdeG) (:text |.!stopPropagation) (:type :leaf)
                              |j $ {} (:at 1612064548468) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
          |add-prop $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |add-prop) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645976416046) (:by |rJoDgvdeG) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1645976422809) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645976417712) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645976418289) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1645976419673) (:by |rJoDgvdeG) (:text |p) (:type :leaf)
                              |h $ {} (:at 1645976421454) (:by |rJoDgvdeG) (:text |prop-value) (:type :leaf)
                          |b $ {} (:at 1645976424041) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |prop-name) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610612155446) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                  |j $ {} (:at 1610612157618) (:by |rJoDgvdeG) (:text |p) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1623584543089) (:by |rJoDgvdeG) (:text |case-default) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |prop-name) (:type :leaf)
                      |n $ {} (:at 1623584541095) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623584541095) (:by |rJoDgvdeG) (:text |aset) (:type :leaf)
                          |j $ {} (:at 1623584541095) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                          |r $ {} (:at 1623584541095) (:by |rJoDgvdeG) (:text |prop-name) (:type :leaf)
                          |v $ {} (:at 1623584541095) (:by |rJoDgvdeG) (:text |prop-value) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text ||style) (:type :leaf)
                          |j $ {} (:at 1541076694462) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1541076694462) (:by |root) (:text |aset) (:type :leaf)
                              |j $ {} (:at 1541076694462) (:by |root) (:text |target) (:type :leaf)
                              |r $ {} (:at 1541076694462) (:by |root) (:text |prop-name) (:type :leaf)
                              |v $ {} (:at 1541076694462) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1541076694462) (:by |root) (:text |style->string) (:type :leaf)
                                  |j $ {} (:at 1541076694462) (:by |root) (:text |prop-value) (:type :leaf)
          |add-style $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |add-style) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645976443304) (:by |rJoDgvdeG) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1645976572266) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645976444812) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645976446270) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1645976447350) (:by |rJoDgvdeG) (:text |p) (:type :leaf)
                              |h $ {} (:at 1645976447750) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                          |b $ {} (:at 1645976573445) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |style-name) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610612096838) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                  |j $ {} (:at 1610612186380) (:by |rJoDgvdeG) (:text |p) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |style-value) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1613290110251) (:by |rJoDgvdeG) (:text |get-style-value) (:type :leaf)
                              |j $ {} (:at 1610612188246) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                              |r $ {} (:at 1613290113942) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1647336842675) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |.-style) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                      |n $ {} (:at 1647336843974) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647336844329) (:by |rJoDgvdeG) (:text |aset) (:type :leaf)
                          |b $ {} (:at 1647336846760) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
                          |h $ {} (:at 1647336849917) (:by |rJoDgvdeG) (:text |style-value) (:type :leaf)
          |append-element $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |append-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                  |v $ {} (:at 1612022230196) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645976532748) (:by |rJoDgvdeG) (:text |&let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |make-element) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                          |v $ {} (:at 1612022232328) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622299007499) (:by |rJoDgvdeG) (:text |.!appendChild) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
          |apply-dom-changes $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |apply-dom-changes) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |changes) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |mount-point) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |root) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529815273075) (:by |root) (:text |.-firstElementChild) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |mount-point) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610029065400) (:by |rJoDgvdeG) (:text |&doseq) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |changes) (:type :leaf)
                      |n $ {} (:at 1612023583248) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612023585762) (:by |rJoDgvdeG) (:text |assert) (:type :leaf)
                          |j $ {} (:at 1612023592150) (:by |rJoDgvdeG) (:text "|\"4 items") (:type :leaf)
                          |r $ {} (:at 1612023593883) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612023596242) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                              |j $ {} (:at 1612023597264) (:by |rJoDgvdeG) (:text |4) (:type :leaf)
                              |r $ {} (:at 1612023597626) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612023598424) (:by |rJoDgvdeG) (:text |count) (:type :leaf)
                                  |j $ {} (:at 1612023598980) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1643708168971) (:by |rJoDgvdeG) (:text |let-sugar) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |b $ {} (:at 1610029088371) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643708170199) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1643708172318) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                      |T $ {} (:at 1610029091768) (:by |rJoDgvdeG) (:text |op-type) (:type :leaf)
                                      |j $ {} (:at 1643708174576) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                                      |r $ {} (:at 1643708176814) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                      |v $ {} (:at 1643708180273) (:by |rJoDgvdeG) (:text |op-data) (:type :leaf)
                                  |j $ {} (:at 1610029093470) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |find-target) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |root) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |n-coord) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1643708041069) (:by |rJoDgvdeG) (:text |case-default) (:type :leaf)
                              |W $ {} (:at 1643708144890) (:by |rJoDgvdeG) (:text |op-type) (:type :leaf)
                              |Z $ {} (:at 1643708045685) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643708045685) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1643708045685) (:by |rJoDgvdeG) (:text "||not implemented:") (:type :leaf)
                                  |r $ {} (:at 1643708045685) (:by |rJoDgvdeG) (:text |op-type) (:type :leaf)
                                  |v $ {} (:at 1643708045685) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                                  |x $ {} (:at 1643708045685) (:by |rJoDgvdeG) (:text |op-data) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921074654) (:by |root) (:text |op/replace-prop) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |replace-prop) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                              |v $ {} (:at 1513921637106) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921073360) (:by |root) (:text |op/add-prop) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |add-prop) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921071080) (:by |root) (:text |op/rm-prop) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |rm-prop) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                              |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921069876) (:by |root) (:text |op/add-style) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |add-style) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                              |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921068496) (:by |root) (:text |op/replace-style) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |replace-style) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                              |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921067091) (:by |root) (:text |op/rm-style) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |rm-style) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                              |yr $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921098758) (:by |root) (:text |op/set-event) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |add-event) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                                      |x $ {} (:at 1612064870128) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                              |yv $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921063938) (:by |root) (:text |op/rm-event) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |rm-event) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                              |yx $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921082965) (:by |root) (:text |op/add-element) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |add-element) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                                      |x $ {} (:at 1612023615160) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                              |yy $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921085749) (:by |root) (:text |op/rm-element) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |rm-element) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                              |yyT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921090034) (:by |root) (:text |op/replace-element) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |replace-element) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                                      |v $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                                      |x $ {} (:at 1612023617007) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                              |yyj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513921096442) (:by |root) (:text |op/append-element) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |append-element) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text |op-data) (:type :leaf)
                                      |v $ {} (:at 1612023620616) (:by |rJoDgvdeG) (:text |listener-builder) (:type :leaf)
                                      |x $ {} (:at 1612023621805) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                              |yyn $ {} (:at 1571584018933) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1572521976375) (:by |rJoDgvdeG) (:text |op/effect-mount) (:type :leaf)
                                  |j $ {} (:at 1571584031327) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571584033932) (:by |rJoDgvdeG) (:text |run-effect) (:type :leaf)
                                      |j $ {} (:at 1571584035839) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1571584039176) (:by |rJoDgvdeG) (:text |op-data) (:type :leaf)
                                      |v $ {} (:at 1572505555674) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                              |yyp $ {} (:at 1571584018933) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1572522008145) (:by |rJoDgvdeG) (:text |op/effect-unmount) (:type :leaf)
                                  |j $ {} (:at 1571584031327) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571584033932) (:by |rJoDgvdeG) (:text |run-effect) (:type :leaf)
                                      |j $ {} (:at 1571584035839) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1571584039176) (:by |rJoDgvdeG) (:text |op-data) (:type :leaf)
                                      |v $ {} (:at 1572505555674) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                              |yyq $ {} (:at 1571584018933) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1572522009659) (:by |rJoDgvdeG) (:text |op/effect-update) (:type :leaf)
                                  |j $ {} (:at 1571584031327) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571584033932) (:by |rJoDgvdeG) (:text |run-effect) (:type :leaf)
                                      |j $ {} (:at 1571584035839) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1571584039176) (:by |rJoDgvdeG) (:text |op-data) (:type :leaf)
                                      |v $ {} (:at 1572505555674) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
                              |yyqT $ {} (:at 1571584018933) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1572522005870) (:by |rJoDgvdeG) (:text |op/effect-before-update) (:type :leaf)
                                  |j $ {} (:at 1571584031327) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571584033932) (:by |rJoDgvdeG) (:text |run-effect) (:type :leaf)
                                      |j $ {} (:at 1571584035839) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                                      |r $ {} (:at 1571584039176) (:by |rJoDgvdeG) (:text |op-data) (:type :leaf)
                                      |v $ {} (:at 1572505555674) (:by |rJoDgvdeG) (:text |n-coord) (:type :leaf)
          |find-target $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |find-target) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |root) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1643707971166) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                  |p $ {} (:at 1572505750018) (:by |rJoDgvdeG) (:text |root) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |child) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |aget) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |.-children) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |root) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by |root) (:text |index) (:type :leaf)
                      |r $ {} (:at 1572505774020) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1572505774558) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                          |L $ {} (:at 1572505775994) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1572505777060) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1572505777714) (:by |rJoDgvdeG) (:text |child) (:type :leaf)
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |recur) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |child) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |rest) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |coord) (:type :leaf)
                          |j $ {} (:at 1572505780916) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
          |replace-element $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |replace-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                  |v $ {} (:at 1612022219791) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |make-element) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |listener-builder) (:type :leaf)
                              |v $ {} (:at 1612022221353) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
                  |r $ {} (:at 1647336970277) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1647336971086) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                      |L $ {} (:at 1647336973191) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647336973191) (:by |rJoDgvdeG) (:text |.-parentElement) (:type :leaf)
                          |b $ {} (:at 1647336973191) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1622298995389) (:by |rJoDgvdeG) (:text |.!insertBefore) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |new-element) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622298996962) (:by |rJoDgvdeG) (:text |.!remove) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
          |replace-prop $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |replace-prop) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1610612107887) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610612122986) (:by |rJoDgvdeG) (:text |let[]) (:type :leaf)
                  |L $ {} (:at 1610612123330) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610612124015) (:by |rJoDgvdeG) (:text |p) (:type :leaf)
                      |j $ {} (:at 1610612139084) (:by |rJoDgvdeG) (:text |prop-value) (:type :leaf)
                  |P $ {} (:at 1610612127713) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |prop-name) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610212135735) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                      |j $ {} (:at 1610612129609) (:by |rJoDgvdeG) (:text |p) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1623584532031) (:by |rJoDgvdeG) (:text |identical?) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |prop-name) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text ||value) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643708945272) (:by |rJoDgvdeG) (:text |not=) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |prop-value) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |.-value) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                              |r $ {} (:at 1541076728088) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1541076728088) (:by |root) (:text |aset) (:type :leaf)
                                  |j $ {} (:at 1541076728088) (:by |root) (:text |target) (:type :leaf)
                                  |r $ {} (:at 1541076728088) (:by |root) (:text |prop-name) (:type :leaf)
                                  |v $ {} (:at 1541076728088) (:by |root) (:text |prop-value) (:type :leaf)
                          |v $ {} (:at 1541076730573) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1541076730573) (:by |root) (:text |aset) (:type :leaf)
                              |j $ {} (:at 1541076730573) (:by |root) (:text |target) (:type :leaf)
                              |r $ {} (:at 1541076730573) (:by |root) (:text |prop-name) (:type :leaf)
                              |v $ {} (:at 1541076730573) (:by |root) (:text |prop-value) (:type :leaf)
          |replace-style $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |replace-style) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645976475498) (:by |rJoDgvdeG) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1645976477705) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1645976479750) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1645976478151) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1645976480871) (:by |rJoDgvdeG) (:text |p) (:type :leaf)
                              |h $ {} (:at 1645976481230) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                          |b $ {} (:at 1645976482011) (:by |rJoDgvdeG) (:text |op) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |style-name) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610612100602) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                  |j $ {} (:at 1610612197836) (:by |rJoDgvdeG) (:text |p) (:type :leaf)
                  |r $ {} (:at 1647336883163) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1647336884058) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                      |L $ {} (:at 1647336884672) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647336884672) (:by |rJoDgvdeG) (:text |.-style) (:type :leaf)
                          |b $ {} (:at 1647336884672) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                      |T $ {} (:at 1621413309749) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |aset) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |style-name) (:type :leaf)
                          |x $ {} (:at 1621413426428) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1621413426428) (:by |rJoDgvdeG) (:text |get-style-value) (:type :leaf)
                              |f $ {} (:at 1621413774644) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                              |r $ {} (:at 1621413426428) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1621413426428) (:by |rJoDgvdeG) (:text |dashed->camel) (:type :leaf)
                                  |j $ {} (:at 1621413426428) (:by |rJoDgvdeG) (:text |style-name) (:type :leaf)
          |rm-element $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |rm-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1505376311769) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1505376312417) (:by |root) (:text |if) (:type :leaf)
                  |L $ {} (:at 1505376313121) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1505376313962) (:by |root) (:text |some?) (:type :leaf)
                      |j $ {} (:at 1505376315269) (:by |root) (:text |target) (:type :leaf)
                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1623584509658) (:by |rJoDgvdeG) (:text |.!remove) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1505376316231) (:by |root) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1623584507875) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                      |r $ {} (:at 1505376369651) (:by |root) (:text "||Respo: Element already removed! Probably by :inner-text.") (:type :leaf)
          |rm-event $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |rm-event) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645976512523) (:by |rJoDgvdeG) (:text |&let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |event-prop) (:type :leaf)
                      |b $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |event->prop) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |event-name) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |aset) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |event-prop) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
          |rm-prop $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |rm-prop) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1515771402147) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1515771408225) (:by |root) (:text |let) (:type :leaf)
                  |L $ {} (:at 1515771408443) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1515771408607) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1515771409412) (:by |root) (:text |k) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610612168588) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                  |T $ {} (:at 1541076742345) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1541076742345) (:by |root) (:text |aset) (:type :leaf)
                      |j $ {} (:at 1541076742345) (:by |root) (:text |target) (:type :leaf)
                      |r $ {} (:at 1541076742345) (:by |root) (:text |k) (:type :leaf)
                      |v $ {} (:at 1541076742345) (:by |root) (:text |nil) (:type :leaf)
          |rm-style $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |rm-style) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |target) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1645976496823) (:by |rJoDgvdeG) (:text |&let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |style-name) (:type :leaf)
                      |b $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610612206623) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1647336897592) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1647336898444) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                      |L $ {} (:at 1647336899184) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647336899184) (:by |rJoDgvdeG) (:text |.-style) (:type :leaf)
                          |b $ {} (:at 1647336899184) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |aset) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |style-name) (:type :leaf)
                          |v $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
          |run-effect $ {} (:at 1571584061797) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1571584061797) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1571584061797) (:by |rJoDgvdeG) (:text |run-effect) (:type :leaf)
              |r $ {} (:at 1571584061797) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571584061797) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                  |j $ {} (:at 1643709597456) (:by |rJoDgvdeG) (:text |method) (:type :leaf)
                  |r $ {} (:at 1572505639266) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
              |v $ {} (:at 1572505527034) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1572505527586) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |L $ {} (:at 1572505528559) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1572505529273) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                      |j $ {} (:at 1572505530622) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                  |T $ {} (:at 1571584062993) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |r $ {} (:at 1643709599808) (:by |rJoDgvdeG) (:text |method) (:type :leaf)
                      |v $ {} (:at 1571587472632) (:by |rJoDgvdeG) (:text |target) (:type :leaf)
                  |j $ {} (:at 1572505531510) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1572507524060) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                      |j $ {} (:at 1572505606809) (:by |rJoDgvdeG) (:text "|\"Unknown effects target:") (:type :leaf)
                      |v $ {} (:at 1572505559083) (:by |rJoDgvdeG) (:text |coord) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.render.patch) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |event->prop) (:type :leaf)
                        |x $ {} (:at 1613290226207) (:by |rJoDgvdeG) (:text |get-style-value) (:type :leaf)
                |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.render.dom) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |make-element) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |style->string) (:type :leaf)
                |y $ {} (:at 1513921026110) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1513921101977) (:by |root) (:text |respo.schema.op) (:type :leaf)
                    |r $ {} (:at 1513921033014) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1513921103387) (:by |root) (:text |op) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.schema $ {}
        :defs $ {}
          |Component $ {} (:at 1615278579000) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |r $ {} (:at 1615278584275) (:by |rJoDgvdeG) (:text |defrecord) (:type :leaf)
              |v $ {} (:at 1615302393562) (:by |rJoDgvdeG) (:text |Component) (:type :leaf)
              |x $ {} (:at 1615278594768) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
              |y $ {} (:at 1615278597143) (:by |rJoDgvdeG) (:text |:effects) (:type :leaf)
              |yT $ {} (:at 1615278599071) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
          |Effect $ {} (:at 1615300095252) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1615302402472) (:by |rJoDgvdeG) (:text |defrecord) (:type :leaf)
              |j $ {} (:at 1615300095252) (:by |rJoDgvdeG) (:text |Effect) (:type :leaf)
              |v $ {} (:at 1615300112097) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
              |x $ {} (:at 1615300113800) (:by |rJoDgvdeG) (:text |:coord) (:type :leaf)
              |y $ {} (:at 1615300114700) (:by |rJoDgvdeG) (:text |:args) (:type :leaf)
              |yT $ {} (:at 1615300116522) (:by |rJoDgvdeG) (:text |:method) (:type :leaf)
          |Element $ {} (:at 1615278616530) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |r $ {} (:at 1615278622035) (:by |rJoDgvdeG) (:text |defrecord) (:type :leaf)
              |v $ {} (:at 1615302384922) (:by |rJoDgvdeG) (:text |Element) (:type :leaf)
              |x $ {} (:at 1615278628293) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
              |y $ {} (:at 1615278629851) (:by |rJoDgvdeG) (:text |:coord) (:type :leaf)
              |yT $ {} (:at 1615278631573) (:by |rJoDgvdeG) (:text |:attrs) (:type :leaf)
              |yj $ {} (:at 1615278633572) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
              |yr $ {} (:at 1615278635355) (:by |rJoDgvdeG) (:text |:event) (:type :leaf)
              |yv $ {} (:at 1615278638314) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
          |cache-info $ {} (:at 1592128521861) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592128524075) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1592128521861) (:by |rJoDgvdeG) (:text |cache-info) (:type :leaf)
              |r $ {} (:at 1592128521861) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592128525060) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1592128525355) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592128526375) (:by |rJoDgvdeG) (:text |:value) (:type :leaf)
                      |j $ {} (:at 1592128527024) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1592128527554) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592128599812) (:by |rJoDgvdeG) (:text |:initial-loop) (:type :leaf)
                      |j $ {} (:at 1592128552155) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1592128548625) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592128692796) (:by |rJoDgvdeG) (:text |:last-hit) (:type :leaf)
                      |j $ {} (:at 1592128577658) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1592128604110) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592128615161) (:by |rJoDgvdeG) (:text |:hit-times) (:type :leaf)
                      |j $ {} (:at 1592128619977) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
          |effect $ {} (:at 1571572970677) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1571572975536) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1571572970677) (:by |rJoDgvdeG) (:text |effect) (:type :leaf)
              |r $ {} (:at 1571572970677) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571572977581) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1571572977834) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571572982171) (:by |rJoDgvdeG) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1571572984492) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |n $ {} (:at 1571572989655) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571572993070) (:by |rJoDgvdeG) (:text |:respo-node) (:type :leaf)
                      |j $ {} (:at 1571572994513) (:by |rJoDgvdeG) (:text |:effect) (:type :leaf)
                  |r $ {} (:at 1571572985180) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571572987289) (:by |rJoDgvdeG) (:text |:coord) (:type :leaf)
                      |j $ {} (:at 1571572987495) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571572987833) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                  |v $ {} (:at 1571572996327) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571572999739) (:by |rJoDgvdeG) (:text |:args) (:type :leaf)
                      |j $ {} (:at 1571573000099) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571573000248) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                  |y $ {} (:at 1571573004068) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1571573005229) (:by |rJoDgvdeG) (:text |:method) (:type :leaf)
                      |j $ {} (:at 1571573005963) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571573006299) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1571573006505) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1647337698863) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                              |T $ {} (:at 1571573010966) (:by |rJoDgvdeG) (:text |args) (:type :leaf)
                          |n $ {} (:at 1647337700682) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1647337704305) (:by |rJoDgvdeG) (:text |;) (:type :leaf)
                              |b $ {} (:at 1647337705017) (:by |rJoDgvdeG) (:text |args) (:type :leaf)
                              |h $ {} (:at 1647337706433) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1647337706433) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1647337706433) (:by |rJoDgvdeG) (:text |action) (:type :leaf)
                                  |h $ {} (:at 1647337706433) (:by |rJoDgvdeG) (:text |parent) (:type :leaf)
                                  |l $ {} (:at 1647337706433) (:by |rJoDgvdeG) (:text |at-place?) (:type :leaf)
        :ns $ {} (:at 1505328949889) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1505328949889) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1505328949889) (:by |root) (:text |respo.schema) (:type :leaf)
        :proc $ {} (:at 1505328949889) (:by |root) (:type :expr)
          :data $ {}
      |respo.schema.op $ {}
        :defs $ {}
          |add-element $ {} (:at 1513920790595) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920814252) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920790595) (:by |root) (:text |add-element) (:type :leaf)
              |r $ {} (:at 1513920815969) (:by |root) (:text |0) (:type :leaf)
          |add-prop $ {} (:at 1513920760423) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920895382) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920760423) (:by |root) (:text |add-prop) (:type :leaf)
              |r $ {} (:at 1513920967810) (:by |root) (:text |10) (:type :leaf)
          |add-style $ {} (:at 1513920766350) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920913975) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920766350) (:by |root) (:text |add-style) (:type :leaf)
              |r $ {} (:at 1513920974431) (:by |root) (:text |20) (:type :leaf)
          |append-element $ {} (:at 1513920804206) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920822758) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920804206) (:by |root) (:text |append-element) (:type :leaf)
              |r $ {} (:at 1513920845568) (:by |root) (:text |3) (:type :leaf)
          |effect-before-update $ {} (:at 1572521771240) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1572521798380) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1572521771240) (:by |rJoDgvdeG) (:text |effect-before-update) (:type :leaf)
              |r $ {} (:at 1572521799902) (:by |rJoDgvdeG) (:text |42) (:type :leaf)
          |effect-mount $ {} (:at 1572521760381) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1572521777565) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1572521760381) (:by |rJoDgvdeG) (:text |effect-mount) (:type :leaf)
              |r $ {} (:at 1572521779516) (:by |rJoDgvdeG) (:text |41) (:type :leaf)
          |effect-unmount $ {} (:at 1572521762724) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1572521806568) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1572521762724) (:by |rJoDgvdeG) (:text |effect-unmount) (:type :leaf)
              |r $ {} (:at 1572521807957) (:by |rJoDgvdeG) (:text |44) (:type :leaf)
          |effect-update $ {} (:at 1572521765373) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1572521787525) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1572521765373) (:by |rJoDgvdeG) (:text |effect-update) (:type :leaf)
              |r $ {} (:at 1572521786677) (:by |rJoDgvdeG) (:text |43) (:type :leaf)
          |replace-element $ {} (:at 1513920797062) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920878196) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920797062) (:by |root) (:text |replace-element) (:type :leaf)
              |r $ {} (:at 1513920862050) (:by |root) (:text |1) (:type :leaf)
          |replace-prop $ {} (:at 1513920757879) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920900259) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920757879) (:by |root) (:text |replace-prop) (:type :leaf)
              |r $ {} (:at 1513920969688) (:by |root) (:text |11) (:type :leaf)
          |replace-style $ {} (:at 1513920774287) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920920415) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920774287) (:by |root) (:text |replace-style) (:type :leaf)
              |r $ {} (:at 1513920976985) (:by |root) (:text |21) (:type :leaf)
          |rm-element $ {} (:at 1513920794452) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920838971) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920794452) (:by |root) (:text |rm-element) (:type :leaf)
              |r $ {} (:at 1513920881474) (:by |root) (:text |2) (:type :leaf)
          |rm-event $ {} (:at 1513920784876) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920952138) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920784876) (:by |root) (:text |rm-event) (:type :leaf)
              |r $ {} (:at 1513920985172) (:by |root) (:text |32) (:type :leaf)
          |rm-prop $ {} (:at 1513920762699) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920906407) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920762699) (:by |root) (:text |rm-prop) (:type :leaf)
              |r $ {} (:at 1513920971567) (:by |root) (:text |12) (:type :leaf)
          |rm-style $ {} (:at 1513920776112) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513920924808) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920776112) (:by |root) (:text |rm-style) (:type :leaf)
              |r $ {} (:at 1513920978283) (:by |root) (:text |22) (:type :leaf)
          |set-event $ {} (:at 1513920779217) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513921447857) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1513920933652) (:by |root) (:text |set-event) (:type :leaf)
              |r $ {} (:at 1513920980144) (:by |root) (:text |30) (:type :leaf)
        :ns $ {} (:at 1513920723777) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1513920723777) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1513920723777) (:by |root) (:text |respo.schema.op) (:type :leaf)
        :proc $ {} (:at 1513920723777) (:by |root) (:type :expr)
          :data $ {}
      |respo.test.comp.task $ {}
        :defs $ {}
          |comp-task $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505409022685) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |comp-task) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |span) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |:inner-text) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.test.comp.task) (:type :leaf)
            |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1610031637395) (:by |rJoDgvdeG) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |hsl) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540830138479) (:by |root) (:text |respo.core) (:type :leaf)
                    |j $ {} (:at 1508915183390) (:by |root) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |D $ {} (:at 1505409019792) (:by |root) (:text |defcomp) (:type :leaf)
                        |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                        |j $ {} (:at 1504774121421) (:by |root) (:text |span) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.test.comp.todolist $ {}
        :defs $ {}
          |comp-todolist $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1505409072010) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |comp-todolist) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511711975290) (:by |rJoDgvdeG) (:text |list->) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |style-todolist) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619541722376) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                      |j $ {} (:at 1610189393868) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1610189396310) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                          |T $ {} (:at 1504774121421) (:by |root) (:text |tasks) (:type :leaf)
                          |j $ {} (:at 1610189396797) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610189397962) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |map) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:id) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |comp-task) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by |root) (:text |task) (:type :leaf)
          |style-todolist $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |style-todolist) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:blue) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |:font-family) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text "||\"微软雅黑\", Verdana") (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.test.comp.todolist) (:type :leaf)
            |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.test.comp.task) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |comp-task) (:type :leaf)
                |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540830145807) (:by |root) (:text |respo.core) (:type :leaf)
                    |j $ {} (:at 1508915196724) (:by |root) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |D $ {} (:at 1505409082913) (:by |root) (:text |defcomp) (:type :leaf)
                        |T $ {} (:at 1504774121421) (:by |root) (:text |div) (:type :leaf)
                        |j $ {} (:at 1511711981544) (:by |rJoDgvdeG) (:text |list->) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.test.html $ {}
        :defs $ {}
          |html-quote-test $ {} (:at 1511711065520) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511711360457) (:by |rJoDgvdeG) (:text |deftest) (:type :leaf)
              |j $ {} (:at 1511711065520) (:by |rJoDgvdeG) (:text |html-quote-test) (:type :leaf)
              |r $ {} (:at 1511711362403) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511711363272) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |j $ {} (:at 1511711363498) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711363692) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711365003) (:by |rJoDgvdeG) (:text |tree-demo) (:type :leaf)
                          |j $ {} (:at 1511711366585) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1511711367304) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                              |j $ {} (:at 1511711367835) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711368191) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1511711368438) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1511711369543) (:by |rJoDgvdeG) (:text |:value) (:type :leaf)
                                      |j $ {} (:at 1511711381698) (:by |rJoDgvdeG) (:text "||a\"b\"c") (:type :leaf)
                                  |r $ {} (:at 1511711383807) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1511711385578) (:by |rJoDgvdeG) (:text |:x) (:type :leaf)
                                      |r $ {} (:at 1511711852059) (:by |rJoDgvdeG) (:text ||y) (:type :leaf)
                                  |v $ {} (:at 1511711389092) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1511711391354) (:by |rJoDgvdeG) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1511711392425) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1511711392777) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1511711393603) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1511711395471) (:by |rJoDgvdeG) (:text |:content) (:type :leaf)
                                              |j $ {} (:at 1511711399966) (:by |rJoDgvdeG) (:text "||d\"e\"f") (:type :leaf)
                  |r $ {} (:at 1511711404221) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711405191) (:by |rJoDgvdeG) (:text |testing) (:type :leaf)
                      |j $ {} (:at 1511711409876) (:by |rJoDgvdeG) (:text "||HTML contains quotes") (:type :leaf)
                      |r $ {} (:at 1511711410891) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711411345) (:by |rJoDgvdeG) (:text |is) (:type :leaf)
                          |j $ {} (:at 1511711411540) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1511711411770) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                              |j $ {} (:at 1511711412559) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711414239) (:by |rJoDgvdeG) (:text |slurp) (:type :leaf)
                                  |j $ {} (:at 1511711424284) (:by |rJoDgvdeG) (:text ||test/examples/quote.html) (:type :leaf)
                              |r $ {} (:at 1511711426056) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711427360) (:by |rJoDgvdeG) (:text |make-string) (:type :leaf)
                                  |j $ {} (:at 1511711429408) (:by |rJoDgvdeG) (:text |tree-demo) (:type :leaf)
          |html-test $ {} (:at 1511711049027) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511711183530) (:by |rJoDgvdeG) (:text |deftest) (:type :leaf)
              |j $ {} (:at 1511711049027) (:by |rJoDgvdeG) (:text |html-test) (:type :leaf)
              |r $ {} (:at 1511711186214) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511711186657) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |j $ {} (:at 1511711187714) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711187879) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711190184) (:by |rJoDgvdeG) (:text |todo-demo) (:type :leaf)
                          |j $ {} (:at 1511711190437) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1511711193568) (:by |rJoDgvdeG) (:text |comp-todolist) (:type :leaf)
                              |j $ {} (:at 1511711199093) (:by |rJoDgvdeG) (:text |todolist-store) (:type :leaf)
                  |r $ {} (:at 1511711200571) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711203224) (:by |rJoDgvdeG) (:text |testing) (:type :leaf)
                      |j $ {} (:at 1511712220676) (:by |rJoDgvdeG) (:text "||test generated HTML from component") (:type :leaf)
                      |r $ {} (:at 1511711211316) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711211593) (:by |rJoDgvdeG) (:text |is) (:type :leaf)
                          |j $ {} (:at 1511711213169) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1511711213352) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                              |j $ {} (:at 1511711214146) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711215010) (:by |rJoDgvdeG) (:text |slurp) (:type :leaf)
                                  |j $ {} (:at 1511711221378) (:by |rJoDgvdeG) (:text ||test/examples/demo.html) (:type :leaf)
                              |r $ {} (:at 1511711223959) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711227344) (:by |rJoDgvdeG) (:text |make-string) (:type :leaf)
                                  |j $ {} (:at 1511711230659) (:by |rJoDgvdeG) (:text |todo-demo) (:type :leaf)
          |nil-prop-test $ {} (:at 1592797386780) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1592797392969) (:by |rJoDgvdeG) (:text |deftest) (:type :leaf)
              |j $ {} (:at 1592797386780) (:by |rJoDgvdeG) (:text |nil-prop-test) (:type :leaf)
              |r $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |j $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:text |piece) (:type :leaf)
                          |j $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592797398379) (:by |rJoDgvdeG) (:text |script) (:type :leaf)
                              |j $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592797405200) (:by |rJoDgvdeG) (:text |:src) (:type :leaf)
                                      |j $ {} (:at 1592797413123) (:by |rJoDgvdeG) (:text "|\"a.js") (:type :leaf)
                                  |r $ {} (:at 1592797469766) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1592797825951) (:by |rJoDgvdeG) (:text |:defer) (:type :leaf)
                                      |j $ {} (:at 1592797728705) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:text |testing) (:type :leaf)
                      |j $ {} (:at 1592797426106) (:by |rJoDgvdeG) (:text "||test generate script with nil") (:type :leaf)
                      |r $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:text |is) (:type :leaf)
                          |j $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                              |j $ {} (:at 1592797459599) (:by |rJoDgvdeG) (:text "||<script src=\"a.js\"></script>") (:type :leaf)
                              |r $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:text |make-string) (:type :leaf)
                                  |j $ {} (:at 1592797395431) (:by |rJoDgvdeG) (:text |piece) (:type :leaf)
          |run-tests $ {} (:at 1610285120819) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610285120819) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610285120819) (:by |rJoDgvdeG) (:text |run-tests) (:type :leaf)
              |n $ {} (:at 1610285136810) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
              |t $ {} (:at 1610285147781) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610287069658) (:by |rJoDgvdeG) (:text |html-quote-test) (:type :leaf)
              |u $ {} (:at 1610285156489) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610285161757) (:by |rJoDgvdeG) (:text |nil-prop-test) (:type :leaf)
              |uT $ {} (:at 1610285163027) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610285169698) (:by |rJoDgvdeG) (:text |simple-html-test) (:type :leaf)
              |v $ {} (:at 1610285140212) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610289141737) (:by |rJoDgvdeG) (:text |textarea-test) (:type :leaf)
          |simple-html-test $ {} (:at 1511711052310) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511711243596) (:by |rJoDgvdeG) (:text |deftest) (:type :leaf)
              |j $ {} (:at 1511711052310) (:by |rJoDgvdeG) (:text |simple-html-test) (:type :leaf)
              |v $ {} (:at 1511711246326) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511711246812) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |j $ {} (:at 1511711247077) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711247231) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711248778) (:by |rJoDgvdeG) (:text |tree-demo) (:type :leaf)
                          |j $ {} (:at 1511711249744) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1511711250327) (:by |rJoDgvdeG) (:text |html) (:type :leaf)
                              |j $ {} (:at 1511711254430) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711255470) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1511711258663) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711259228) (:by |rJoDgvdeG) (:text |head) (:type :leaf)
                                  |j $ {} (:at 1511711260060) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1511711260423) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1511711262910) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1511711263719) (:by |rJoDgvdeG) (:text |title) (:type :leaf)
                                      |j $ {} (:at 1511711264912) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1511711265347) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1511711265574) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1511711269084) (:by |rJoDgvdeG) (:text |:innerHTML) (:type :leaf)
                                              |j $ {} (:at 1511711270946) (:by |rJoDgvdeG) (:text ||Demo) (:type :leaf)
                                  |v $ {} (:at 1511711272344) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1511711273486) (:by |rJoDgvdeG) (:text |link) (:type :leaf)
                                      |j $ {} (:at 1511711274424) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1511711274784) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1511711275046) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1511711275849) (:by |rJoDgvdeG) (:text |:rel) (:type :leaf)
                                              |j $ {} (:at 1511711278077) (:by |rJoDgvdeG) (:text ||icon) (:type :leaf)
                                          |r $ {} (:at 1511711278957) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1511711280306) (:by |rJoDgvdeG) (:text |:type) (:type :leaf)
                                              |j $ {} (:at 1511711282747) (:by |rJoDgvdeG) (:text ||image/png) (:type :leaf)
                                  |x $ {} (:at 1511711285280) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1511711286184) (:by |rJoDgvdeG) (:text |script) (:type :leaf)
                                      |j $ {} (:at 1511711287716) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1511711288100) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1511711288419) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1511711291400) (:by |rJoDgvdeG) (:text |:innerHTML) (:type :leaf)
                                              |j $ {} (:at 1511711293274) (:by |rJoDgvdeG) (:text ||{}) (:type :leaf)
                              |v $ {} (:at 1511711301964) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711302821) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
                                  |j $ {} (:at 1511711304679) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1511711305945) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1511711306551) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1511711307844) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                                      |j $ {} (:at 1511711308073) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1511711308546) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1511711309684) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1511711309976) (:by |rJoDgvdeG) (:text |:id) (:type :leaf)
                                              |j $ {} (:at 1511711311170) (:by |rJoDgvdeG) (:text ||app) (:type :leaf)
                                      |r $ {} (:at 1511711313111) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1511711313643) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                                          |j $ {} (:at 1511711313919) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1511711314530) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1511711317205) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711318220) (:by |rJoDgvdeG) (:text |testing) (:type :leaf)
                      |j $ {} (:at 1511712209700) (:by |rJoDgvdeG) (:text "||test generated HTML from tree") (:type :leaf)
                      |r $ {} (:at 1511711328507) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711328786) (:by |rJoDgvdeG) (:text |is) (:type :leaf)
                          |j $ {} (:at 1511711329109) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1511711329562) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                              |j $ {} (:at 1511711330162) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711331434) (:by |rJoDgvdeG) (:text |slurp) (:type :leaf)
                                  |j $ {} (:at 1511711338330) (:by |rJoDgvdeG) (:text ||test/examples/simple.html) (:type :leaf)
                              |r $ {} (:at 1511711340747) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711343880) (:by |rJoDgvdeG) (:text |make-string) (:type :leaf)
                                  |j $ {} (:at 1511711346103) (:by |rJoDgvdeG) (:text |tree-demo) (:type :leaf)
          |slurp $ {} (:at 1511711043994) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610288943548) (:by |rJoDgvdeG) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1511711043994) (:by |rJoDgvdeG) (:text |slurp) (:type :leaf)
              |r $ {} (:at 1511711043994) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511711156163) (:by |rJoDgvdeG) (:text |file-path) (:type :leaf)
              |v $ {} (:at 1610290672989) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610290672989) (:by |rJoDgvdeG) (:text |read-file) (:type :leaf)
                  |j $ {} (:at 1610290672989) (:by |rJoDgvdeG) (:text |file-path) (:type :leaf)
          |textarea-test $ {} (:at 1512356927258) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1512356958915) (:by |rJoDgvdeG) (:text |deftest) (:type :leaf)
              |j $ {} (:at 1512356927258) (:by |rJoDgvdeG) (:text |textarea-test) (:type :leaf)
              |v $ {} (:at 1511711186214) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511711186657) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |j $ {} (:at 1511711187714) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1512357039364) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1512357039764) (:by |rJoDgvdeG) (:text |piece) (:type :leaf)
                          |j $ {} (:at 1512357102353) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1512357104007) (:by |rJoDgvdeG) (:text |textarea) (:type :leaf)
                              |j $ {} (:at 1512357104455) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1512357104853) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1512357105079) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1512357106286) (:by |rJoDgvdeG) (:text |:value) (:type :leaf)
                                      |j $ {} (:at 1512357122629) (:by |rJoDgvdeG) (:text "||a\nb\nc\n\"\nd") (:type :leaf)
                  |r $ {} (:at 1511711200571) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711203224) (:by |rJoDgvdeG) (:text |testing) (:type :leaf)
                      |j $ {} (:at 1511712220676) (:by |rJoDgvdeG) (:text "||test generated HTML from component") (:type :leaf)
                      |r $ {} (:at 1511711211316) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711211593) (:by |rJoDgvdeG) (:text |is) (:type :leaf)
                          |j $ {} (:at 1511711213169) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1511711213352) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                              |f $ {} (:at 1596421840316) (:by |rJoDgvdeG) (:text "||<textarea value=\"a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d\">a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d</textarea>") (:type :leaf)
                              |r $ {} (:at 1511711223959) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1511711227344) (:by |rJoDgvdeG) (:text |make-string) (:type :leaf)
                                  |j $ {} (:at 1512357036561) (:by |rJoDgvdeG) (:text |piece) (:type :leaf)
          |todolist-store $ {} (:at 1511711037998) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511711890004) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1511711037998) (:by |rJoDgvdeG) (:text |todolist-store) (:type :leaf)
              |r $ {} (:at 1511711037998) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511711901013) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                  |j $ {} (:at 1511711901332) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711901811) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1511711902095) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711903467) (:by |rJoDgvdeG) (:text |:id) (:type :leaf)
                          |j $ {} (:at 1511711904306) (:by |rJoDgvdeG) (:text |101) (:type :leaf)
                      |r $ {} (:at 1511711905464) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711907148) (:by |rJoDgvdeG) (:text |:text) (:type :leaf)
                          |j $ {} (:at 1511711908988) (:by |rJoDgvdeG) (:text ||101) (:type :leaf)
                  |r $ {} (:at 1511711901332) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711901811) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1511711902095) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711903467) (:by |rJoDgvdeG) (:text |:id) (:type :leaf)
                          |j $ {} (:at 1511711914637) (:by |rJoDgvdeG) (:text |102) (:type :leaf)
                      |r $ {} (:at 1511711905464) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511711907148) (:by |rJoDgvdeG) (:text |:text) (:type :leaf)
                          |j $ {} (:at 1511711917510) (:by |rJoDgvdeG) (:text ||102) (:type :leaf)
        :ns $ {} (:at 1511710949521) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1511710949521) (:by |rJoDgvdeG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1511710949521) (:by |rJoDgvdeG) (:text |respo.test.html) (:type :leaf)
            |r $ {} (:at 1511711075178) (:by |rJoDgvdeG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1511711077503) (:by |rJoDgvdeG) (:text |:require) (:type :leaf)
                |j $ {} (:at 1511711077795) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1610285403777) (:by |rJoDgvdeG) (:text |calcit-test.core) (:type :leaf)
                    |r $ {} (:at 1511711084271) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1511711084778) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1511711086690) (:by |rJoDgvdeG) (:text |deftest) (:type :leaf)
                        |r $ {} (:at 1511711089580) (:by |rJoDgvdeG) (:text |is) (:type :leaf)
                        |v $ {} (:at 1511711090467) (:by |rJoDgvdeG) (:text |testing) (:type :leaf)
                |r $ {} (:at 1511711096271) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1540830130336) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1511711101326) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1511711101548) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1511711102265) (:by |rJoDgvdeG) (:text |html) (:type :leaf)
                        |r $ {} (:at 1511711104602) (:by |rJoDgvdeG) (:text |head) (:type :leaf)
                        |v $ {} (:at 1511711105347) (:by |rJoDgvdeG) (:text |title) (:type :leaf)
                        |x $ {} (:at 1511711109940) (:by |rJoDgvdeG) (:text |script) (:type :leaf)
                        |yj $ {} (:at 1511711112888) (:by |rJoDgvdeG) (:text |div) (:type :leaf)
                        |yr $ {} (:at 1511711113456) (:by |rJoDgvdeG) (:text |link) (:type :leaf)
                        |yt $ {} (:at 1610289161692) (:by |rJoDgvdeG) (:text |textarea) (:type :leaf)
                        |yv $ {} (:at 1511711114187) (:by |rJoDgvdeG) (:text |body) (:type :leaf)
                |w $ {} (:at 1511711137930) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1511711141952) (:by |rJoDgvdeG) (:text |respo.render.html) (:type :leaf)
                    |r $ {} (:at 1511711143036) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1511711143323) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1511711145892) (:by |rJoDgvdeG) (:text |make-string) (:type :leaf)
        :proc $ {} (:at 1511710949521) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1511711772311) (:by |rJoDgvdeG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1511711775973) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
                |j $ {} (:at 1511711777071) (:by |rJoDgvdeG) (:text |main!) (:type :leaf)
                |r $ {} (:at 1511711777783) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                |v $ {} (:at 1511711778794) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1511711782015) (:by |rJoDgvdeG) (:text |run-tests) (:type :leaf)
      |respo.test.main $ {}
        :defs $ {}
          |main! $ {} (:at 1511710961298) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511710961298) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1511710961298) (:by |rJoDgvdeG) (:text |main!) (:type :leaf)
              |r $ {} (:at 1511710961298) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
              |v $ {} (:at 1511710964620) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610285272430) (:by |rJoDgvdeG) (:text |html/run-tests) (:type :leaf)
              |x $ {} (:at 1610285275429) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610285275897) (:by |rJoDgvdeG) (:text |test-pick-attrs) (:type :leaf)
              |y $ {} (:at 1610285278894) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610285284907) (:by |rJoDgvdeG) (:text |test-pick-event) (:type :leaf)
          |reload! $ {} (:at 1511712031878) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511712031878) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1511712031878) (:by |rJoDgvdeG) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1511712031878) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
              |v $ {} (:at 1511712034731) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1647338731583) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                  |b $ {} (:at 1647338741049) (:by |rJoDgvdeG) (:text "|\"reload.") (:type :leaf)
          |test-pick-attrs $ {} (:at 1513783968618) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513783969980) (:by |root) (:text |deftest) (:type :leaf)
              |j $ {} (:at 1513783968618) (:by |root) (:text |test-pick-attrs) (:type :leaf)
              |r $ {} (:at 1511711211316) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511711211593) (:by |rJoDgvdeG) (:text |is) (:type :leaf)
                  |j $ {} (:at 1511711213169) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511711213352) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                      |f $ {} (:at 1513783998155) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1513784000528) (:by |root) (:text |pick-attrs) (:type :leaf)
                          |j $ {} (:at 1513784002422) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1513784002798) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1513784048201) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513784048810) (:by |root) (:text |:value) (:type :leaf)
                                  |j $ {} (:at 1513784050061) (:by |root) (:text ||string) (:type :leaf)
                              |r $ {} (:at 1513784199776) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513784201331) (:by |root) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1513784204720) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1513784205297) (:by |root) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1513784206251) (:by |root) (:type :expr)
                                        :data $ {}
                                      |r $ {} (:at 1610286464594) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                      |p $ {} (:at 1513784005171) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610289174122) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1513784006440) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1513784196224) (:by |root) (:text |[]) (:type :leaf)
                              |T $ {} (:at 1513784019017) (:by |root) (:text |:value) (:type :leaf)
                              |j $ {} (:at 1513784021893) (:by |root) (:text ||string) (:type :leaf)
          |test-pick-event $ {} (:at 1513784223167) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513784225457) (:by |root) (:text |deftest) (:type :leaf)
              |j $ {} (:at 1513784223167) (:by |root) (:text |test-pick-event) (:type :leaf)
              |r $ {} (:at 1513785230464) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1513785231821) (:by |root) (:text |testing) (:type :leaf)
                  |L $ {} (:at 1513785235070) (:by |root) (:text "||test event") (:type :leaf)
                  |T $ {} (:at 1513784259082) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1513784259718) (:by |root) (:text |let) (:type :leaf)
                      |L $ {} (:at 1513784259931) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1513784260090) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1513784260621) (:by |root) (:text |f) (:type :leaf)
                              |j $ {} (:at 1513784261206) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513784261517) (:by |root) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1513784261806) (:by |root) (:type :expr)
                                    :data $ {}
                                  |r $ {} (:at 1610286477659) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
                      |T $ {} (:at 1513784237111) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1513784237484) (:by |root) (:text |is) (:type :leaf)
                          |j $ {} (:at 1513784238993) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1513784239156) (:by |root) (:text |=) (:type :leaf)
                              |j $ {} (:at 1513784242284) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513784243569) (:by |root) (:text |pick-event) (:type :leaf)
                                  |j $ {} (:at 1513784244146) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1513784244493) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1513784244729) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1513784247855) (:by |root) (:text |:value) (:type :leaf)
                                          |j $ {} (:at 1513784248976) (:by |root) (:text ||a) (:type :leaf)
                                      |r $ {} (:at 1513784249626) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1513784253846) (:by |root) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1513784264952) (:by |root) (:text |f) (:type :leaf)
                              |r $ {} (:at 1513784268459) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513784270461) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1513784271913) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1513784276414) (:by |root) (:text |:click) (:type :leaf)
                                      |j $ {} (:at 1513784276764) (:by |root) (:text |f) (:type :leaf)
                      |j $ {} (:at 1513784237111) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1513784237484) (:by |root) (:text |is) (:type :leaf)
                          |j $ {} (:at 1513784238993) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1513784239156) (:by |root) (:text |=) (:type :leaf)
                              |j $ {} (:at 1513784242284) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513784243569) (:by |root) (:text |pick-event) (:type :leaf)
                                  |j $ {} (:at 1513784244146) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1513784244493) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1513784244729) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1513784247855) (:by |root) (:text |:value) (:type :leaf)
                                          |j $ {} (:at 1513784248976) (:by |root) (:text ||a) (:type :leaf)
                                      |r $ {} (:at 1513784249626) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1513784253846) (:by |root) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1513784264952) (:by |root) (:text |f) (:type :leaf)
                                      |v $ {} (:at 1513784401595) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1513784403254) (:by |root) (:text |:on) (:type :leaf)
                                          |j $ {} (:at 1513784403575) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1513784404710) (:by |root) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1513784405124) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1513784406656) (:by |root) (:text |:input) (:type :leaf)
                                                  |j $ {} (:at 1513784408578) (:by |root) (:text |f) (:type :leaf)
                              |r $ {} (:at 1513784268459) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513784270461) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1513784271913) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1513784276414) (:by |root) (:text |:click) (:type :leaf)
                                      |j $ {} (:at 1513784276764) (:by |root) (:text |f) (:type :leaf)
                                  |r $ {} (:at 1513785461409) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1513785462941) (:by |root) (:text |:input) (:type :leaf)
                                      |j $ {} (:at 1513785463265) (:by |root) (:text |f) (:type :leaf)
        :ns $ {} (:at 1511710942011) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1511710942011) (:by |rJoDgvdeG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1511710942011) (:by |rJoDgvdeG) (:text |respo.test.main) (:type :leaf)
            |r $ {} (:at 1511710992049) (:by |rJoDgvdeG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1511710995250) (:by |rJoDgvdeG) (:text |:require) (:type :leaf)
                |j $ {} (:at 1511710995449) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1511710998533) (:by |rJoDgvdeG) (:text |respo.test.html) (:type :leaf)
                    |r $ {} (:at 1511711799580) (:by |rJoDgvdeG) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1511711800004) (:by |rJoDgvdeG) (:text |html) (:type :leaf)
                |v $ {} (:at 1513784070951) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1610285022718) (:by |rJoDgvdeG) (:text |calcit-test.core) (:type :leaf)
                    |r $ {} (:at 1513784075043) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1513784075270) (:by |root) (:type :expr)
                      :data $ {}
                        |b $ {} (:at 1513784115309) (:by |root) (:text |deftest) (:type :leaf)
                        |j $ {} (:at 1513784076853) (:by |root) (:text |testing) (:type :leaf)
                        |r $ {} (:at 1513784077318) (:by |root) (:text |is) (:type :leaf)
                |x $ {} (:at 1513784025184) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1513784028897) (:by |root) (:text |respo.util.list) (:type :leaf)
                    |r $ {} (:at 1513784029739) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1513784029972) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1513784033999) (:by |root) (:text |pick-attrs) (:type :leaf)
                        |r $ {} (:at 1513784040329) (:by |root) (:text |pick-event) (:type :leaf)
        :proc $ {} (:at 1511710942011) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
      |respo.util.detect $ {}
        :defs $ {}
          |=seq $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |=seq) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1517741380629) (:by |root) (:text |xs) (:type :leaf)
                  |j $ {} (:at 1517741391582) (:by |root) (:text |ys) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |a-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1517741382245) (:by |root) (:text |xs) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |b-empty?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1517741394104) (:by |root) (:text |ys) (:type :leaf)
                  |r $ {} (:at 1571933004375) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1571933006970) (:by |rJoDgvdeG) (:text |cond) (:type :leaf)
                      |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |and) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by |root) (:text |a-empty?) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by |root) (:text |b-empty?) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text |true) (:type :leaf)
                      |j $ {} (:at 1571933017841) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571933010820) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571933010820) (:by |rJoDgvdeG) (:text |or) (:type :leaf)
                              |j $ {} (:at 1571933010820) (:by |rJoDgvdeG) (:text |a-empty?) (:type :leaf)
                              |r $ {} (:at 1571933010820) (:by |rJoDgvdeG) (:text |b-empty?) (:type :leaf)
                          |j $ {} (:at 1571933021436) (:by |rJoDgvdeG) (:text |false) (:type :leaf)
                      |p $ {} (:at 1571933248147) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571933248683) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571933248966) (:by |rJoDgvdeG) (:text |=) (:type :leaf)
                              |j $ {} (:at 1571933252215) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571933250968) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                  |j $ {} (:at 1571933253271) (:by |rJoDgvdeG) (:text |xs) (:type :leaf)
                              |r $ {} (:at 1571933254002) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571933255401) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                  |j $ {} (:at 1571933256879) (:by |rJoDgvdeG) (:text |ys) (:type :leaf)
                          |j $ {} (:at 1571933257761) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571933259022) (:by |rJoDgvdeG) (:text |recur) (:type :leaf)
                              |j $ {} (:at 1571933261728) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571933261514) (:by |rJoDgvdeG) (:text |rest) (:type :leaf)
                                  |j $ {} (:at 1571933262428) (:by |rJoDgvdeG) (:text |xs) (:type :leaf)
                              |r $ {} (:at 1571933264395) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1571933265303) (:by |rJoDgvdeG) (:text |rest) (:type :leaf)
                                  |j $ {} (:at 1571933266436) (:by |rJoDgvdeG) (:text |ys) (:type :leaf)
                      |s $ {} (:at 1571933268071) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610203131445) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                          |j $ {} (:at 1571933272140) (:by |rJoDgvdeG) (:text |false) (:type :leaf)
          |component? $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
              |x $ {} (:at 1615282394378) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1615282394918) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |L $ {} (:at 1615282395333) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1615282396666) (:by |rJoDgvdeG) (:text |record?) (:type :leaf)
                      |j $ {} (:at 1615282397736) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |T $ {} (:at 1615282272526) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1647336474483) (:by |rJoDgvdeG) (:text |&record:matches?) (:type :leaf)
                      |r $ {} (:at 1615282286494) (:by |rJoDgvdeG) (:text |schema/Component) (:type :leaf)
                      |v $ {} (:at 1623693490954) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |j $ {} (:at 1615282399791) (:by |rJoDgvdeG) (:text |false) (:type :leaf)
          |effect? $ {} (:at 1571573031814) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1571573035671) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1571573031814) (:by |rJoDgvdeG) (:text |effect?) (:type :leaf)
              |r $ {} (:at 1571573031814) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571573037460) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
              |v $ {} (:at 1610204171209) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1610204171989) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                  |L $ {} (:at 1610204172229) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1615300165633) (:by |rJoDgvdeG) (:text |record?) (:type :leaf)
                      |j $ {} (:at 1610204173379) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |P $ {} (:at 1615300167942) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1647338067072) (:by |rJoDgvdeG) (:text |&record:matches?) (:type :leaf)
                      |b $ {} (:at 1623693521540) (:by |rJoDgvdeG) (:text |schema/Effect) (:type :leaf)
                      |j $ {} (:at 1615300173274) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
          |element? $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |element?) (:type :leaf)
              |r $ {} (:at 1571495569702) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1571495570035) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
              |v $ {} (:at 1610189561239) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1615282774467) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |L $ {} (:at 1610189562682) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1615282578708) (:by |rJoDgvdeG) (:text |record?) (:type :leaf)
                      |j $ {} (:at 1610189563418) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |f $ {} (:at 1615282580662) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1647336481758) (:by |rJoDgvdeG) (:text |&record:matches?) (:type :leaf)
                      |b $ {} (:at 1623693505819) (:by |rJoDgvdeG) (:text |schema/Element) (:type :leaf)
                      |j $ {} (:at 1615282585004) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |p $ {} (:at 1615282775914) (:by |rJoDgvdeG) (:text |false) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.detect) (:type :leaf)
            |r $ {} (:at 1615282261936) (:by |rJoDgvdeG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1615282263729) (:by |rJoDgvdeG) (:text |:require) (:type :leaf)
                |j $ {} (:at 1615282263985) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1615282269264) (:by |rJoDgvdeG) (:text |respo.schema) (:type :leaf)
                    |r $ {} (:at 1615282269966) (:by |rJoDgvdeG) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1615282270722) (:by |rJoDgvdeG) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.util.dom $ {}
        :defs $ {}
          |compare-to-dom! $ {} (:at 1529815704509) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1529815704509) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1529815704509) (:by |root) (:text |compare-to-dom!) (:type :leaf)
              |r $ {} (:at 1529815704509) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1529815745559) (:by |root) (:text |vdom) (:type :leaf)
                  |j $ {} (:at 1529815719025) (:by |root) (:text |element) (:type :leaf)
              |t $ {} (:at 1529830816491) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1529831794711) (:by |root) (:text |;) (:type :leaf)
                  |T $ {} (:at 1529830817270) (:by |root) (:text |println) (:type :leaf)
                  |j $ {} (:at 1529831117125) (:by |root) (:text "|\"compare") (:type :leaf)
                  |p $ {} (:at 1529831404928) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529831405781) (:by |root) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1529831406862) (:by |root) (:text |vdom) (:type :leaf)
                  |v $ {} (:at 1529831325932) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529831327578) (:by |root) (:text |map) (:type :leaf)
                      |f $ {} (:at 1529831376412) (:by |root) (:text |:name) (:type :leaf)
                      |r $ {} (:at 1529831352947) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1529831354677) (:by |root) (:text |vals) (:type :leaf)
                          |T $ {} (:at 1529831338020) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529831336570) (:by |root) (:text |:children) (:type :leaf)
                              |j $ {} (:at 1529831339614) (:by |root) (:text |vdom) (:type :leaf)
              |u $ {} (:at 1529830825546) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1529831797247) (:by |root) (:text |;) (:type :leaf)
                  |j $ {} (:at 1622299216999) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                  |r $ {} (:at 1529830830791) (:by |root) (:text |element) (:type :leaf)
              |v $ {} (:at 1529830137956) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1529830138579) (:by |root) (:text |let) (:type :leaf)
                  |L $ {} (:at 1529830138830) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529830138972) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529830693329) (:by |root) (:text |virtual-name) (:type :leaf)
                          |j $ {} (:at 1529830082251) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1612763463721) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                              |T $ {} (:at 1529815756068) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529815756999) (:by |root) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1529815761065) (:by |root) (:text |vdom) (:type :leaf)
                      |j $ {} (:at 1529830147620) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529830150553) (:by |root) (:text |real-name) (:type :leaf)
                          |j $ {} (:at 1529830084997) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1622299054814) (:by |rJoDgvdeG) (:text |.!toLowerCase) (:type :leaf)
                              |T $ {} (:at 1529815764305) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529815766925) (:by |root) (:text |.-tagName) (:type :leaf)
                                  |j $ {} (:at 1529815770517) (:by |root) (:text |element) (:type :leaf)
                  |T $ {} (:at 1529830077150) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1529830078828) (:by |root) (:text |when) (:type :leaf)
                      |T $ {} (:at 1529815746389) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1643708860153) (:by |rJoDgvdeG) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1529830160483) (:by |root) (:text |virtual-name) (:type :leaf)
                          |r $ {} (:at 1529830162025) (:by |root) (:text |real-name) (:type :leaf)
                      |j $ {} (:at 1529830120964) (:by |root) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1622299050316) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                          |n $ {} (:at 1529832761307) (:by |root) (:text "|\"SSR checking: tag names do not match:") (:type :leaf)
                          |t $ {} (:at 1529832830626) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1529832832009) (:by |root) (:text |pr-str) (:type :leaf)
                              |T $ {} (:at 1529831819690) (:by |root) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1529831821094) (:by |root) (:text |dissoc) (:type :leaf)
                                  |T $ {} (:at 1529831818869) (:by |root) (:text |vdom) (:type :leaf)
                                  |j $ {} (:at 1529831826495) (:by |root) (:text |:children) (:type :leaf)
                          |w $ {} (:at 1529831830652) (:by |root) (:text |element) (:type :leaf)
              |x $ {} (:at 1529830186509) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1529830256529) (:by |root) (:text |if) (:type :leaf)
                  |T $ {} (:at 1529815879997) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1643708864097) (:by |rJoDgvdeG) (:text |not=) (:type :leaf)
                      |j $ {} (:at 1529815890320) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1529815891633) (:by |root) (:text |count) (:type :leaf)
                          |T $ {} (:at 1529815885011) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529815887642) (:by |root) (:text |:children) (:type :leaf)
                              |j $ {} (:at 1529815889892) (:by |root) (:text |vdom) (:type :leaf)
                      |r $ {} (:at 1529815892347) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529815898109) (:by |root) (:text |.-length) (:type :leaf)
                          |j $ {} (:at 1529815900565) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529815903187) (:by |root) (:text |.-children) (:type :leaf)
                              |j $ {} (:at 1529815904957) (:by |root) (:text |element) (:type :leaf)
                  |j $ {} (:at 1530207068204) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1530207069049) (:by |root) (:text |let) (:type :leaf)
                      |L $ {} (:at 1530207069412) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530207069767) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1530207074816) (:by |root) (:text |maybe-html) (:type :leaf)
                              |j $ {} (:at 1530206409278) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530206412177) (:by |root) (:text |:innerHTML) (:type :leaf)
                                  |j $ {} (:at 1612763792187) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1612763794288) (:by |rJoDgvdeG) (:text |pairs-map) (:type :leaf)
                                      |T $ {} (:at 1530206849376) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1530206422607) (:by |root) (:text |:attrs) (:type :leaf)
                                          |j $ {} (:at 1530206418715) (:by |root) (:text |vdom) (:type :leaf)
                      |T $ {} (:at 1530206390299) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1530206391351) (:by |root) (:text |if) (:type :leaf)
                          |L $ {} (:at 1530206405448) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1530206408931) (:by |root) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1530207080665) (:by |root) (:text |maybe-html) (:type :leaf)
                          |P $ {} (:at 1530207401065) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1530207418509) (:by |root) (:text |when) (:type :leaf)
                              |L $ {} (:at 1530207404007) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530207404196) (:by |root) (:text |=) (:type :leaf)
                                  |j $ {} (:at 1530207407640) (:by |root) (:text |maybe-html) (:type :leaf)
                                  |r $ {} (:at 1530207408971) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1530207410780) (:by |root) (:text |.-innerHTML) (:type :leaf)
                                      |j $ {} (:at 1530207414751) (:by |root) (:text |element) (:type :leaf)
                              |T $ {} (:at 1530206424739) (:by |root) (:type :expr)
                                :data $ {}
                                  |j $ {} (:at 1622299070602) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                                  |r $ {} (:at 1530207446749) (:by |root) (:text "|\"SSR checking: noticed dom containing innerHTML:") (:type :leaf)
                                  |x $ {} (:at 1529815904957) (:by |root) (:text |element) (:type :leaf)
                          |T $ {} (:at 1529831621447) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1529831623231) (:by |root) (:text |do) (:type :leaf)
                              |T $ {} (:at 1529830187657) (:by |root) (:type :expr)
                                :data $ {}
                                  |j $ {} (:at 1622299068073) (:by |rJoDgvdeG) (:text |js/console.error) (:type :leaf)
                                  |r $ {} (:at 1529832736857) (:by |root) (:text "|\"SSR checking: children sizes do not match!") (:type :leaf)
                              |n $ {} (:at 1529831589989) (:by |root) (:type :expr)
                                :data $ {}
                                  |b $ {} (:at 1622299062557) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                                  |j $ {} (:at 1529833110265) (:by |root) (:text "|\"virtual:") (:type :leaf)
                                  |r $ {} (:at 1529832862971) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1619541874457) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                      |L $ {} (:at 1529832865919) (:by |root) (:text |vdom) (:type :leaf)
                                      |P $ {} (:at 1529832970824) (:by |root) (:text |:children) (:type :leaf)
                                      |R $ {} (:at 1530206897760) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1530206899792) (:by |root) (:text |map) (:type :leaf)
                                          |j $ {} (:at 1530206900401) (:by |root) (:text |last) (:type :leaf)
                                      |S $ {} (:at 1529832872030) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1529832871319) (:by |root) (:text |map) (:type :leaf)
                                          |j $ {} (:at 1529832873317) (:by |root) (:text |:name) (:type :leaf)
                                      |q $ {} (:at 1529833137299) (:by |root) (:text |pr-str) (:type :leaf)
                              |r $ {} (:at 1529831602840) (:by |root) (:type :expr)
                                :data $ {}
                                  |j $ {} (:at 1622299065086) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                                  |r $ {} (:at 1529831610016) (:by |root) (:text "|\"real:") (:type :leaf)
                                  |v $ {} (:at 1529830239274) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529830241412) (:by |root) (:text |.-children) (:type :leaf)
                                      |j $ {} (:at 1529830243454) (:by |root) (:text |element) (:type :leaf)
                  |r $ {} (:at 1529830403040) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1529830404535) (:by |root) (:text |let) (:type :leaf)
                      |L $ {} (:at 1529830404758) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529830404885) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529830408632) (:by |root) (:text |real-children) (:type :leaf)
                              |j $ {} (:at 1529830409348) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529830413575) (:by |root) (:text |.-children) (:type :leaf)
                                  |j $ {} (:at 1529830414836) (:by |root) (:text |element) (:type :leaf)
                      |T $ {} (:at 1529830258663) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529830340182) (:by |root) (:text |loop) (:type :leaf)
                          |j $ {} (:at 1529830340478) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529830340719) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529830355775) (:by |root) (:text |acc) (:type :leaf)
                                  |j $ {} (:at 1529830357157) (:by |root) (:text |0) (:type :leaf)
                              |j $ {} (:at 1529830361612) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529830370138) (:by |root) (:text |other-children) (:type :leaf)
                                  |j $ {} (:at 1529830373576) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529830375147) (:by |root) (:text |:children) (:type :leaf)
                                      |j $ {} (:at 1529830376283) (:by |root) (:text |vdom) (:type :leaf)
                          |r $ {} (:at 1529830380564) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529830571074) (:by |root) (:text |when) (:type :leaf)
                              |j $ {} (:at 1529830383160) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529830386884) (:by |root) (:text |not) (:type :leaf)
                                  |j $ {} (:at 1529830387436) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529830388661) (:by |root) (:text |empty?) (:type :leaf)
                                      |j $ {} (:at 1529831706758) (:by |root) (:text |other-children) (:type :leaf)
                              |r $ {} (:at 1529830571757) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529830582504) (:by |root) (:text |compare-to-dom!) (:type :leaf)
                                  |j $ {} (:at 1529830904553) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1572885804989) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
                                      |T $ {} (:at 1529830588817) (:by |root) (:text |other-children) (:type :leaf)
                                  |r $ {} (:at 1529830593234) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529830594136) (:by |root) (:text |aget) (:type :leaf)
                                      |j $ {} (:at 1529830598225) (:by |root) (:text |real-children) (:type :leaf)
                                      |r $ {} (:at 1529830599884) (:by |root) (:text |acc) (:type :leaf)
                              |v $ {} (:at 1529830600883) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529830601679) (:by |root) (:text |recur) (:type :leaf)
                                  |b $ {} (:at 1529830617982) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529830618835) (:by |root) (:text |inc) (:type :leaf)
                                      |j $ {} (:at 1529830619546) (:by |root) (:text |acc) (:type :leaf)
                                  |j $ {} (:at 1529830602517) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1529830605416) (:by |root) (:text |rest) (:type :leaf)
                                      |j $ {} (:at 1529830607660) (:by |root) (:text |other-children) (:type :leaf)
          |shared-canvas-context $ {} (:at 1511712941660) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511712949104) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1511712941660) (:by |rJoDgvdeG) (:text |shared-canvas-context) (:type :leaf)
              |r $ {} (:at 1511712941660) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511712950763) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |j $ {} (:at 1511712957662) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511712958710) (:by |rJoDgvdeG) (:text |and) (:type :leaf)
                      |b $ {} (:at 1511712974502) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1511713250762) (:by |rJoDgvdeG) (:text |exists?) (:type :leaf)
                          |T $ {} (:at 1511712978443) (:by |rJoDgvdeG) (:text |js/window) (:type :leaf)
                      |j $ {} (:at 1511712961574) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511713253567) (:by |rJoDgvdeG) (:text |exists?) (:type :leaf)
                          |j $ {} (:at 1511712981591) (:by |rJoDgvdeG) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1511713024536) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1622299086906) (:by |rJoDgvdeG) (:text |.!getContext) (:type :leaf)
                      |T $ {} (:at 1511712992552) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |j $ {} (:at 1643708824587) (:by |rJoDgvdeG) (:text |js/document.createElement) (:type :leaf)
                          |r $ {} (:at 1511713012654) (:by |rJoDgvdeG) (:text ||canvas) (:type :leaf)
                      |j $ {} (:at 1511713029620) (:by |rJoDgvdeG) (:text ||2d) (:type :leaf)
                  |v $ {} (:at 1511713031151) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
          |text-width $ {} (:at 1511713039830) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1511713039830) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1511713039830) (:by |rJoDgvdeG) (:text |text-width) (:type :leaf)
              |r $ {} (:at 1511713039830) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511713045646) (:by |rJoDgvdeG) (:text |content) (:type :leaf)
                  |j $ {} (:at 1511713047834) (:by |rJoDgvdeG) (:text |font-size) (:type :leaf)
                  |r $ {} (:at 1511713049550) (:by |rJoDgvdeG) (:text |font-family) (:type :leaf)
              |v $ {} (:at 1511713051657) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1511713055827) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |j $ {} (:at 1511713056318) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1511713058409) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                      |j $ {} (:at 1511713059037) (:by |rJoDgvdeG) (:text |shared-canvas-context) (:type :leaf)
                  |r $ {} (:at 1511713085079) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1511713086289) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                      |T $ {} (:at 1511713060905) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623582254767) (:by |rJoDgvdeG) (:text |set!) (:type :leaf)
                          |f $ {} (:at 1623582250155) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1623582251718) (:by |rJoDgvdeG) (:text |.-font) (:type :leaf)
                              |T $ {} (:at 1610291320230) (:by |rJoDgvdeG) (:text |shared-canvas-context) (:type :leaf)
                          |r $ {} (:at 1511713072930) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1511713073414) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                              |j $ {} (:at 1511713075227) (:by |rJoDgvdeG) (:text |font-size) (:type :leaf)
                              |r $ {} (:at 1511713077510) (:by |rJoDgvdeG) (:text "||px ") (:type :leaf)
                              |v $ {} (:at 1511713080294) (:by |rJoDgvdeG) (:text |font-family) (:type :leaf)
                      |j $ {} (:at 1511713086784) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1511713089353) (:by |rJoDgvdeG) (:text |.-width) (:type :leaf)
                          |j $ {} (:at 1511713089893) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1622299097293) (:by |rJoDgvdeG) (:text |.!measureText) (:type :leaf)
                              |j $ {} (:at 1511713096119) (:by |rJoDgvdeG) (:text |shared-canvas-context) (:type :leaf)
                              |r $ {} (:at 1511713098126) (:by |rJoDgvdeG) (:text |content) (:type :leaf)
                  |v $ {} (:at 1511713101132) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1511712852131) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
            |T $ {} (:at 1511712852131) (:by |rJoDgvdeG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1511712852131) (:by |rJoDgvdeG) (:text |respo.util.dom) (:type :leaf)
            |r $ {} (:at 1529830096052) (:by |root) (:type :expr)
              :data $ {}
                |T $ {} (:at 1529830097485) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1572885810265) (:by |rJoDgvdeG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1572885816497) (:by |rJoDgvdeG) (:text |respo.util.list) (:type :leaf)
                    |r $ {} (:at 1572885817751) (:by |rJoDgvdeG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1572885817942) (:by |rJoDgvdeG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1572885819155) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
        :proc $ {} (:at 1511712852131) (:by |rJoDgvdeG) (:type :expr)
          :data $ {}
      |respo.util.format $ {}
        :defs $ {}
          |dashed->camel $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610029342088) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |dashed->camel) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
              |t $ {} (:at 1623582017691) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1623582020543) (:by |rJoDgvdeG) (:text |.!replace) (:type :leaf)
                  |L $ {} (:at 1623582022718) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |T $ {} (:at 1623581995024) (:by |rJoDgvdeG) (:text |dashed-letter-pattern) (:type :leaf)
                  |j $ {} (:at 1623582024048) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1623582024418) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1623582025583) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623582147255) (:by |rJoDgvdeG) (:text |cc) (:type :leaf)
                          |j $ {} (:at 1623582159844) (:by |rJoDgvdeG) (:text |pos) (:type :leaf)
                          |r $ {} (:at 1623582157511) (:by |rJoDgvdeG) (:text |prop) (:type :leaf)
                      |r $ {} (:at 1623582110898) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1623582120166) (:by |rJoDgvdeG) (:text |.!toUpperCase) (:type :leaf)
                          |T $ {} (:at 1623582106149) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1623585089269) (:by |rJoDgvdeG) (:text |aget) (:type :leaf)
                              |j $ {} (:at 1623582170252) (:by |rJoDgvdeG) (:text |cc) (:type :leaf)
                              |r $ {} (:at 1623585089775) (:by |rJoDgvdeG) (:text |1) (:type :leaf)
          |dashed-letter-pattern $ {} (:at 1623581995727) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1623581995727) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1623581995727) (:by |rJoDgvdeG) (:text |dashed-letter-pattern) (:type :leaf)
              |r $ {} (:at 1623581995727) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1623581997824) (:by |rJoDgvdeG) (:text |new) (:type :leaf)
                  |j $ {} (:at 1623582002058) (:by |rJoDgvdeG) (:text |js/RegExp) (:type :leaf)
                  |r $ {} (:at 1623582015695) (:by |rJoDgvdeG) (:text "|\"-[a-z]") (:type :leaf)
                  |v $ {} (:at 1623582013317) (:by |rJoDgvdeG) (:text "|\"g") (:type :leaf)
          |event->edn $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |event->edn) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |L $ {} (:at 1530375390166) (:by |root) (:text |;) (:type :leaf)
                  |r $ {} (:at 1622299132906) (:by |rJoDgvdeG) (:text |js/console.log) (:type :leaf)
                  |v $ {} (:at 1552320148254) (:by |rJoDgvdeG) (:text "|\"simplify event:") (:type :leaf)
                  |x $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
              |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |->) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1643704223833) (:by |rJoDgvdeG) (:text |case-default) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |.-type) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                      |n $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:text |:type) (:type :leaf)
                              |j $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:text |.-type) (:type :leaf)
                                  |j $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                          |r $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:text |:msg) (:type :leaf)
                              |j $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                                  |j $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:text "||Unhandled event: ") (:type :leaf)
                                  |r $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:text |.-type) (:type :leaf)
                                      |j $ {} (:at 1643704231982) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1552320127389) (:by |rJoDgvdeG) (:text "|\"click") (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507356445560) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:type) (:type :leaf)
                                  |j $ {} (:at 1507356448692) (:by |root) (:text |:click) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1552320130879) (:by |rJoDgvdeG) (:text "|\"keydown") (:type :leaf)
                          |j $ {} (:at 1530375434548) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1530375435372) (:by |root) (:text |merge) (:type :leaf)
                              |L $ {} (:at 1530375435652) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530375442825) (:by |root) (:text |map-keyboard-event) (:type :leaf)
                                  |j $ {} (:at 1530375445812) (:by |root) (:text |event) (:type :leaf)
                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1507356376452) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:type) (:type :leaf)
                                      |j $ {} (:at 1507356379176) (:by |root) (:text |:keydown) (:type :leaf)
                                  |v $ {} (:at 1507356381011) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:key-code) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |.-keyCode) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                                  |x $ {} (:at 1507356381011) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507356387437) (:by |root) (:text |:keycode) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |.-keyCode) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                      |w $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1552320133881) (:by |rJoDgvdeG) (:text "|\"keypress") (:type :leaf)
                          |j $ {} (:at 1530375468042) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1530375468977) (:by |root) (:text |merge) (:type :leaf)
                              |L $ {} (:at 1530375435652) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530375442825) (:by |root) (:text |map-keyboard-event) (:type :leaf)
                                  |j $ {} (:at 1530375445812) (:by |root) (:text |event) (:type :leaf)
                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1507356376452) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:type) (:type :leaf)
                                      |j $ {} (:at 1530375200628) (:by |root) (:text |:keypress) (:type :leaf)
                      |x $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1552320136533) (:by |rJoDgvdeG) (:text "|\"keyup") (:type :leaf)
                          |j $ {} (:at 1530375476156) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1530375477052) (:by |root) (:text |merge) (:type :leaf)
                              |L $ {} (:at 1530375435652) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530375442825) (:by |root) (:text |map-keyboard-event) (:type :leaf)
                                  |j $ {} (:at 1530375445812) (:by |root) (:text |event) (:type :leaf)
                              |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1507356389169) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |:type) (:type :leaf)
                                      |j $ {} (:at 1507356391758) (:by |root) (:text |:keyup) (:type :leaf)
                      |y $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1552320139392) (:by |rJoDgvdeG) (:text "|\"input") (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507356404325) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:type) (:type :leaf)
                                  |j $ {} (:at 1507356407422) (:by |root) (:text |:input) (:type :leaf)
                              |x $ {} (:at 1507356412556) (:by |root) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1507356413338) (:by |root) (:text |:value) (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |aget) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |.-target) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                                      |r $ {} (:at 1552320113734) (:by |rJoDgvdeG) (:text "|\"value") (:type :leaf)
                              |y $ {} (:at 1552320072402) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1552320075203) (:by |rJoDgvdeG) (:text |:checked) (:type :leaf)
                                  |j $ {} (:at 1552320075484) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610209598100) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1552320081092) (:by |rJoDgvdeG) (:text |event) (:type :leaf)
                                      |r $ {} (:at 1610209599286) (:by |rJoDgvdeG) (:text |.-target) (:type :leaf)
                                      |v $ {} (:at 1610209600937) (:by |rJoDgvdeG) (:text |.-checked) (:type :leaf)
                      |yT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1552320141663) (:by |rJoDgvdeG) (:text "|\"change") (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507356414848) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:type) (:type :leaf)
                                  |j $ {} (:at 1507356419468) (:by |root) (:text |:change) (:type :leaf)
                              |x $ {} (:at 1507356422422) (:by |root) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1507356423113) (:by |root) (:text |:value) (:type :leaf)
                                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |aget) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |.-target) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                                      |r $ {} (:at 1504774121421) (:by |root) (:text ||value) (:type :leaf)
                      |yj $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1552320143496) (:by |rJoDgvdeG) (:text "|\"focus") (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507356425148) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |:type) (:type :leaf)
                                  |j $ {} (:at 1507356430636) (:by |root) (:text |:focus) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |:original-event) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507356354798) (:by |root) (:text |:event) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |event) (:type :leaf)
          |event->prop $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |event->prop) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text ||on) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610207670774) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
          |event->string $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |event->string) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1623693561429) (:by |rJoDgvdeG) (:text |&str:slice) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612762046832) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by |root) (:text |3) (:type :leaf)
          |get-style-value $ {} (:at 1613289959451) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1613289959451) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1613289959451) (:by |rJoDgvdeG) (:text |get-style-value) (:type :leaf)
              |r $ {} (:at 1613289959451) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1613290210463) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |j $ {} (:at 1613289967411) (:by |rJoDgvdeG) (:text |prop) (:type :leaf)
              |v $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |cond) (:type :leaf)
                  |j $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |string?) (:type :leaf)
                          |j $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                      |j $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |r $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |keyword?) (:type :leaf)
                          |j $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                      |j $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                          |j $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |t $ {} (:at 1613289985214) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1613289985706) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1613289987237) (:by |rJoDgvdeG) (:text |number?) (:type :leaf)
                          |j $ {} (:at 1613289987695) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                      |j $ {} (:at 1613289988432) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1613290030893) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                          |j $ {} (:at 1613290061893) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1622533255104) (:by |rJoDgvdeG) (:text |.!test) (:type :leaf)
                              |T $ {} (:at 1613290043818) (:by |rJoDgvdeG) (:text |pattern-non-dimension-props) (:type :leaf)
                              |j $ {} (:at 1613290069472) (:by |rJoDgvdeG) (:text |prop) (:type :leaf)
                          |r $ {} (:at 1613290097704) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1613290096442) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                              |j $ {} (:at 1613290098159) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                          |v $ {} (:at 1613290098976) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1613290099883) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                              |j $ {} (:at 1613290100287) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                              |r $ {} (:at 1613290101540) (:by |rJoDgvdeG) (:text "|\"px") (:type :leaf)
                  |v $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                      |j $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                          |j $ {} (:at 1613289979453) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
          |hsl $ {} (:at 1610031220537) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610031220537) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1610031220537) (:by |rJoDgvdeG) (:text |hsl) (:type :leaf)
              |r $ {} (:at 1610031220537) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031224002) (:by |rJoDgvdeG) (:text |h) (:type :leaf)
                  |j $ {} (:at 1610031224438) (:by |rJoDgvdeG) (:text |s) (:type :leaf)
                  |r $ {} (:at 1610031225177) (:by |rJoDgvdeG) (:text |l) (:type :leaf)
                  |v $ {} (:at 1613831943199) (:by |rJoDgvdeG) (:text |?) (:type :leaf)
                  |x $ {} (:at 1613831942099) (:by |rJoDgvdeG) (:text |arg) (:type :leaf)
              |v $ {} (:at 1610031227731) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1610031228187) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                  |j $ {} (:at 1610031228490) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610031229892) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610031230804) (:by |rJoDgvdeG) (:text |a) (:type :leaf)
                          |b $ {} (:at 1613831949128) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1613831951361) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                              |j $ {} (:at 1613831952100) (:by |rJoDgvdeG) (:text |arg) (:type :leaf)
                              |r $ {} (:at 1613831952945) (:by |rJoDgvdeG) (:text |1) (:type :leaf)
                  |r $ {} (:at 1610031240675) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610031242430) (:by |rJoDgvdeG) (:text |str) (:type :leaf)
                      |j $ {} (:at 1610031247053) (:by |rJoDgvdeG) (:text "|\"hsl(") (:type :leaf)
                      |n $ {} (:at 1610031265693) (:by |rJoDgvdeG) (:text |h) (:type :leaf)
                      |r $ {} (:at 1610031249013) (:by |rJoDgvdeG) (:text "|\",") (:type :leaf)
                      |t $ {} (:at 1610031267424) (:by |rJoDgvdeG) (:text |s) (:type :leaf)
                      |v $ {} (:at 1610031252250) (:by |rJoDgvdeG) (:text "|\"%,") (:type :leaf)
                      |w $ {} (:at 1610031269243) (:by |rJoDgvdeG) (:text |l) (:type :leaf)
                      |x $ {} (:at 1610031258174) (:by |rJoDgvdeG) (:text "|\"%,") (:type :leaf)
                      |y $ {} (:at 1610031260076) (:by |rJoDgvdeG) (:text |a) (:type :leaf)
                      |yT $ {} (:at 1610031262445) (:by |rJoDgvdeG) (:text "|\")") (:type :leaf)
          |map-keyboard-event $ {} (:at 1530375446806) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1530375446806) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1530375446806) (:by |root) (:text |map-keyboard-event) (:type :leaf)
              |r $ {} (:at 1530375446806) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1530375448936) (:by |root) (:text |event) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |{}) (:type :leaf)
                  |y $ {} (:at 1530375179034) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1530375180254) (:by |root) (:text |:key) (:type :leaf)
                      |j $ {} (:at 1530375182300) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530375183129) (:by |root) (:text |.-key) (:type :leaf)
                          |j $ {} (:at 1530375184063) (:by |root) (:text |event) (:type :leaf)
                  |yT $ {} (:at 1530375184716) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1530375185391) (:by |root) (:text |:code) (:type :leaf)
                      |j $ {} (:at 1530375185644) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530375187278) (:by |root) (:text |.-code) (:type :leaf)
                          |j $ {} (:at 1530375187882) (:by |root) (:text |event) (:type :leaf)
                  |yj $ {} (:at 1530375315159) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1530375319893) (:by |root) (:text |:ctrl?) (:type :leaf)
                      |j $ {} (:at 1530375337222) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530375341264) (:by |root) (:text |.-ctrlKey) (:type :leaf)
                          |j $ {} (:at 1530375341970) (:by |root) (:text |event) (:type :leaf)
                  |yr $ {} (:at 1530375320383) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1530375321897) (:by |root) (:text |:meta?) (:type :leaf)
                      |j $ {} (:at 1530375343648) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530375347021) (:by |root) (:text |.-metaKey) (:type :leaf)
                          |j $ {} (:at 1530375348129) (:by |root) (:text |event) (:type :leaf)
                  |yv $ {} (:at 1530375349388) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1530375352314) (:by |root) (:text |:alt?) (:type :leaf)
                      |j $ {} (:at 1530375352591) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530375354741) (:by |root) (:text |.-altKey) (:type :leaf)
                          |j $ {} (:at 1530375355455) (:by |root) (:text |event) (:type :leaf)
                  |yx $ {} (:at 1530375495540) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1530375498599) (:by |root) (:text |:shift?) (:type :leaf)
                      |j $ {} (:at 1530375498894) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530375500889) (:by |root) (:text |.-shiftKey) (:type :leaf)
                          |j $ {} (:at 1530375501545) (:by |root) (:text |event) (:type :leaf)
          |mute-element $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |mute-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |update) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |:tree) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by |root) (:text |mute-element) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |->) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |element) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647337009378) (:by |rJoDgvdeG) (:text |assoc) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |:event) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610705958058) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |update) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |:children) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1504774121421) (:by |root) (:text |children) (:type :leaf)
                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1619541650194) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1504774121421) (:by |root) (:text |children) (:type :leaf)
                                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |map) (:type :leaf)
                                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1504774121421) (:by |root) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                                          |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1504774121421) (:by |root) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
                                              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1504774121421) (:by |root) (:text |mute-element) (:type :leaf)
                                                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1504774121421) (:by |root) (:text |last) (:type :leaf)
                                                      |j $ {} (:at 1504774121421) (:by |root) (:text |entry) (:type :leaf)
          |pattern-non-dimension-props $ {} (:at 1613290044179) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1613290044179) (:by |rJoDgvdeG) (:text |def) (:type :leaf)
              |j $ {} (:at 1613290044179) (:by |rJoDgvdeG) (:text |pattern-non-dimension-props) (:type :leaf)
              |r $ {} (:at 1613290044179) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1613290052380) (:by |rJoDgvdeG) (:text |new) (:type :leaf)
                  |j $ {} (:at 1613290260316) (:by |rJoDgvdeG) (:text |js/RegExp) (:type :leaf)
                  |r $ {} (:at 1613290055267) (:by |rJoDgvdeG) (:text "|\"acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera") (:type :leaf)
                  |v $ {} (:at 1613290058884) (:by |rJoDgvdeG) (:text "|\"i") (:type :leaf)
          |prop->attr $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |prop->attr) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
              |t $ {} (:at 1592797578919) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1592797582480) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                  |j $ {} (:at 1592797585686) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1613290810138) (:by |rJoDgvdeG) (:text |includes?) (:type :leaf)
                      |j $ {} (:at 1592797593975) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                      |r $ {} (:at 1592797595144) (:by |rJoDgvdeG) (:text "|\"?") (:type :leaf)
                  |r $ {} (:at 1592797599316) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1592797601269) (:by |rJoDgvdeG) (:text |println) (:type :leaf)
                      |j $ {} (:at 1613290820637) (:by |rJoDgvdeG) (:text "|\"[Respo] warning: property includes `?` in") (:type :leaf)
                      |r $ {} (:at 1592797701808) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1643704266528) (:by |rJoDgvdeG) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
                  |n $ {} (:at 1643704267885) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text ||class-name) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||class) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text ||tab-index) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text ||tabindex) (:type :leaf)
                  |w $ {} (:at 1508595954898) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1508595961204) (:by |root) (:text ||read-only) (:type :leaf)
                      |j $ {} (:at 1508595964339) (:by |root) (:text ||readonly) (:type :leaf)
          |purify-element $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |purify-element) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |markup) (:type :leaf)
              |v $ {} (:at 1571496529941) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1571496530907) (:by |rJoDgvdeG) (:text |cond) (:type :leaf)
                  |T $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |markup) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
                  |j $ {} (:at 1571496536984) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1571496536984) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571496536984) (:by |rJoDgvdeG) (:text |component?) (:type :leaf)
                          |j $ {} (:at 1571496536984) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                      |r $ {} (:at 1571496536984) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610191874743) (:by |rJoDgvdeG) (:text |purify-element) (:type :leaf)
                          |j $ {} (:at 1610205059484) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1610205062450) (:by |rJoDgvdeG) (:text |&let) (:type :leaf)
                              |T $ {} (:at 1610205063751) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1610205064267) (:by |rJoDgvdeG) (:text |t) (:type :leaf)
                                  |T $ {} (:at 1571496536984) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1571496536984) (:by |rJoDgvdeG) (:text |:tree) (:type :leaf)
                                      |j $ {} (:at 1571496536984) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                              |b $ {} (:at 1610205067246) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610205077540) (:by |rJoDgvdeG) (:text |when) (:type :leaf)
                                  |j $ {} (:at 1610205069340) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1610205075871) (:by |rJoDgvdeG) (:text |nil?) (:type :leaf)
                                      |T $ {} (:at 1610205068242) (:by |rJoDgvdeG) (:text |t) (:type :leaf)
                                  |r $ {} (:at 1610205078114) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610205079840) (:by |rJoDgvdeG) (:text |raise) (:type :leaf)
                                      |j $ {} (:at 1610205088222) (:by |rJoDgvdeG) (:text "|\"tree is empty") (:type :leaf)
                              |j $ {} (:at 1610205065714) (:by |rJoDgvdeG) (:text |t) (:type :leaf)
                  |r $ {} (:at 1571496544196) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1571496548004) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1571496548567) (:by |rJoDgvdeG) (:text |element?) (:type :leaf)
                          |j $ {} (:at 1571496550405) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                      |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                          |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                          |r $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |update) (:type :leaf)
                              |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |:event) (:type :leaf)
                              |r $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |purify-events) (:type :leaf)
                          |v $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |update) (:type :leaf)
                              |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |:children) (:type :leaf)
                              |r $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                  |r $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1619541664060) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |children) (:type :leaf)
                                      |r $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |map) (:type :leaf)
                                          |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                              |r $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                                  |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                                          |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                                              |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                                      |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |child) (:type :leaf)
                                                          |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                                              |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                                  |r $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                                                      |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                                      |r $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |purify-element) (:type :leaf)
                                                          |j $ {} (:at 1610190436936) (:by |rJoDgvdeG) (:text |child) (:type :leaf)
                  |x $ {} (:at 1571496561797) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610191225571) (:by |rJoDgvdeG) (:text |true) (:type :leaf)
                      |j $ {} (:at 1571496565694) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1571496566264) (:by |rJoDgvdeG) (:text |do) (:type :leaf)
                          |L $ {} (:at 1571496566798) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1571496573905) (:by |rJoDgvdeG) (:text |js/console.warn) (:type :leaf)
                              |j $ {} (:at 1571496593690) (:by |rJoDgvdeG) (:text "|\"Unknown markup during purify:") (:type :leaf)
                              |r $ {} (:at 1571496596542) (:by |rJoDgvdeG) (:text |markup) (:type :leaf)
                          |T $ {} (:at 1571496565029) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
          |purify-events $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |purify-events) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |events) (:type :leaf)
              |t $ {} (:at 1647336318767) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1647336320095) (:by |rJoDgvdeG) (:text |reduce) (:type :leaf)
                  |b $ {} (:at 1647336325810) (:by |rJoDgvdeG) (:text |events) (:type :leaf)
                  |h $ {} (:at 1647336330578) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1647336330904) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                  |l $ {} (:at 1647336331984) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1647336332386) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                      |b $ {} (:at 1647336332770) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647336334018) (:by |rJoDgvdeG) (:text |acc) (:type :leaf)
                          |b $ {} (:at 1647336335781) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                      |h $ {} (:at 1647336336916) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1647336337348) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                          |b $ {} (:at 1647336338715) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1647336339521) (:by |rJoDgvdeG) (:text |some?) (:type :leaf)
                              |b $ {} (:at 1647336340468) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1647336342342) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                                  |b $ {} (:at 1647336343161) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                          |h $ {} (:at 1647336347185) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1647336348313) (:by |rJoDgvdeG) (:text |conj) (:type :leaf)
                              |b $ {} (:at 1647336349090) (:by |rJoDgvdeG) (:text |acc) (:type :leaf)
                              |h $ {} (:at 1647336356590) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1647336351308) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                  |b $ {} (:at 1647336355838) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                          |l $ {} (:at 1647336401145) (:by |rJoDgvdeG) (:text |acc) (:type :leaf)
          |text->html $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |text->html) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |some?) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |->) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |str) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |x) (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623412057455) (:by |rJoDgvdeG) (:text |.replace) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text ||>) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text ||&gt;) (:type :leaf)
                      |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1623412059176) (:by |rJoDgvdeG) (:text |.replace) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text ||<) (:type :leaf)
                          |r $ {} (:at 1504774121421) (:by |root) (:text ||&lt;) (:type :leaf)
                  |v $ {} (:at 1504774121421) (:by |root) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.format) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.detect) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |element?) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
      |respo.util.list $ {}
        :defs $ {}
          |map-with-idx $ {} (:at 1517740647082) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1517740647082) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1517740647082) (:by |root) (:text |map-with-idx) (:type :leaf)
              |r $ {} (:at 1517740647082) (:by |root) (:type :expr)
                :data $ {}
                  |5 $ {} (:at 1629798929325) (:by |rJoDgvdeG) (:text |xs) (:type :leaf)
                  |D $ {} (:at 1517740653616) (:by |root) (:text |f) (:type :leaf)
              |v $ {} (:at 1517740654280) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1517740655990) (:by |root) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1517740657660) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517740660297) (:by |root) (:text |fn?) (:type :leaf)
                      |j $ {} (:at 1517740660750) (:by |root) (:text |f) (:type :leaf)
                  |r $ {} (:at 1517740669719) (:by |root) (:text "||expects function") (:type :leaf)
              |w $ {} (:at 1517740348130) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1517740351005) (:by |root) (:text |assert) (:type :leaf)
                  |j $ {} (:at 1517740418648) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610732899020) (:by |rJoDgvdeG) (:text |list?) (:type :leaf)
                      |j $ {} (:at 1517740420674) (:by |root) (:text |xs) (:type :leaf)
                  |r $ {} (:at 1610732901697) (:by |rJoDgvdeG) (:text "||expects list") (:type :leaf)
              |y $ {} (:at 1517740693884) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1517740716325) (:by |root) (:text |map-indexed) (:type :leaf)
                  |b $ {} (:at 1619541781043) (:by |rJoDgvdeG) (:text |xs) (:type :leaf)
                  |j $ {} (:at 1517740700328) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517740705561) (:by |root) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1517740705932) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1517740713412) (:by |root) (:text |idx) (:type :leaf)
                          |T $ {} (:at 1517740708821) (:by |root) (:text |x) (:type :leaf)
                      |r $ {} (:at 1517740719484) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1517740720016) (:by |root) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1517740723075) (:by |root) (:text |idx) (:type :leaf)
                          |r $ {} (:at 1517740727169) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1517740727439) (:by |root) (:text |f) (:type :leaf)
                              |j $ {} (:at 1517740727891) (:by |root) (:text |x) (:type :leaf)
          |pick-attrs $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |pick-attrs) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |props) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |if) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |props) (:type :leaf)
                  |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1610289188345) (:by |rJoDgvdeG) (:text |[]) (:type :leaf)
                  |v $ {} (:at 1513782866145) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |->) (:type :leaf)
                      |X $ {} (:at 1504774121421) (:by |root) (:text |props) (:type :leaf)
                      |Z $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |:on) (:type :leaf)
                      |a $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |:event) (:type :leaf)
                      |aT $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1504774121421) (:by |root) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1504774121421) (:by |root) (:text |:style) (:type :leaf)
                      |f $ {} (:at 1628626097912) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1628626097912) (:by |rJoDgvdeG) (:text |.to-list) (:type :leaf)
                      |j $ {} (:at 1513782825167) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1513782826536) (:by |root) (:text |filter) (:type :leaf)
                          |T $ {} (:at 1513782780110) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1513782781810) (:by |root) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1513782782091) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1610030592604) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                              |r $ {} (:at 1610030574583) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1610030575354) (:by |rJoDgvdeG) (:text |let) (:type :leaf)
                                  |L $ {} (:at 1610030575607) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1610030575769) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610030576152) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1610030576678) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645978936770) (:by |rJoDgvdeG) (:text |nth) (:type :leaf)
                                              |j $ {} (:at 1610030588079) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                              |r $ {} (:at 1610030581935) (:by |rJoDgvdeG) (:text |0) (:type :leaf)
                                      |j $ {} (:at 1610030582770) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610030583055) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                          |j $ {} (:at 1610030583593) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1645978938444) (:by |rJoDgvdeG) (:text |nth) (:type :leaf)
                                              |j $ {} (:at 1610030589668) (:by |rJoDgvdeG) (:text |pair) (:type :leaf)
                                              |r $ {} (:at 1610030584897) (:by |rJoDgvdeG) (:text |1) (:type :leaf)
                                  |T $ {} (:at 1513782875538) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1513782876303) (:by |root) (:text |not) (:type :leaf)
                                      |T $ {} (:at 1513782786281) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1610290999267) (:by |rJoDgvdeG) (:text |starts-with?) (:type :leaf)
                                          |r $ {} (:at 1610290981042) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610290981042) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                              |j $ {} (:at 1610290981042) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                          |v $ {} (:at 1610291003188) (:by |rJoDgvdeG) (:text "|\"on-") (:type :leaf)
                      |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1551289841027) (:by |rJoDgvdeG) (:text |sort) (:type :leaf)
                          |j $ {} (:at 1551289841746) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1551289842831) (:by |rJoDgvdeG) (:text |fn) (:type :leaf)
                              |L $ {} (:at 1551289843567) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1551289843912) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                  |j $ {} (:at 1551289844955) (:by |rJoDgvdeG) (:text |y) (:type :leaf)
                              |T $ {} (:at 1551289846168) (:by |rJoDgvdeG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1647337394333) (:by |rJoDgvdeG) (:text |&compare) (:type :leaf)
                                  |T $ {} (:at 1551289849344) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1504774121421) (:by |root) (:text |first) (:type :leaf)
                                      |j $ {} (:at 1551289857807) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
                                  |j $ {} (:at 1551289851905) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1551289859960) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                                      |T $ {} (:at 1551289855532) (:by |rJoDgvdeG) (:text |y) (:type :leaf)
          |pick-event $ {} (:at 1513782743303) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1513782743303) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1513782743303) (:by |root) (:text |pick-event) (:type :leaf)
              |r $ {} (:at 1513782743303) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1513782746280) (:by |root) (:text |props) (:type :leaf)
              |v $ {} (:at 1615647772733) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1615647773817) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                  |L $ {} (:at 1615647775126) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1615647775452) (:by |rJoDgvdeG) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1615647776182) (:by |rJoDgvdeG) (:text |props) (:type :leaf)
                  |P $ {} (:at 1615647781902) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1615647782488) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1513782746786) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1513784377351) (:by |root) (:text |merge) (:type :leaf)
                      |j $ {} (:at 1610188529146) (:by |rJoDgvdeG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1610188531976) (:by |rJoDgvdeG) (:text |either) (:type :leaf)
                          |T $ {} (:at 1513782769122) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1513785453815) (:by |root) (:text |:on) (:type :leaf)
                              |j $ {} (:at 1513782771092) (:by |root) (:text |props) (:type :leaf)
                          |j $ {} (:at 1610188532564) (:by |rJoDgvdeG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1610188532905) (:by |rJoDgvdeG) (:text |{}) (:type :leaf)
                      |r $ {} (:at 1513782771764) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1619539970233) (:by |rJoDgvdeG) (:text |->) (:type :leaf)
                          |j $ {} (:at 1513782779468) (:by |root) (:text |props) (:type :leaf)
                          |t $ {} (:at 1513783773275) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1628626168147) (:by |rJoDgvdeG) (:text |map-kv) (:type :leaf)
                              |j $ {} (:at 1513783774099) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1513783774679) (:by |root) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1513783776268) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1628626157136) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                      |j $ {} (:at 1628626157854) (:by |rJoDgvdeG) (:text |v) (:type :leaf)
                                  |r $ {} (:at 1628626143915) (:by |rJoDgvdeG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1628626145620) (:by |rJoDgvdeG) (:text |if) (:type :leaf)
                                      |L $ {} (:at 1628626147598) (:by |rJoDgvdeG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1628626147598) (:by |rJoDgvdeG) (:text |starts-with?) (:type :leaf)
                                          |j $ {} (:at 1628626147598) (:by |rJoDgvdeG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1628626147598) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                              |j $ {} (:at 1628626147598) (:by |rJoDgvdeG) (:text |k) (:type :leaf)
                                          |r $ {} (:at 1628626147598) (:by |rJoDgvdeG) (:text ||on-) (:type :leaf)
                                      |T $ {} (:at 1513783780024) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1513783782433) (:by |root) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1513783784878) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1610189334191) (:by |rJoDgvdeG) (:text |turn-keyword) (:type :leaf)
                                              |j $ {} (:at 1513783794332) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1623693552430) (:by |rJoDgvdeG) (:text |&str:slice) (:type :leaf)
                                                  |T $ {} (:at 1513783787120) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1610188492570) (:by |rJoDgvdeG) (:text |turn-string) (:type :leaf)
                                                      |j $ {} (:at 1513784313055) (:by |root) (:text |k) (:type :leaf)
                                                  |j $ {} (:at 1513783800894) (:by |root) (:text |3) (:type :leaf)
                                          |r $ {} (:at 1513783791555) (:by |root) (:text |v) (:type :leaf)
                                      |j $ {} (:at 1628626150149) (:by |rJoDgvdeG) (:text |nil) (:type :leaf)
          |val-exists? $ {} (:at 1504774121421) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1504774121421) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1504774121421) (:by |root) (:text |val-exists?) (:type :leaf)
              |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |pair) (:type :leaf)
              |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1504774121421) (:by |root) (:text |some?) (:type :leaf)
                  |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1504774121421) (:by |root) (:text |last) (:type :leaf)
                      |j $ {} (:at 1504774121421) (:by |root) (:text |pair) (:type :leaf)
          |val-of-first $ {} (:at 1572885625576) (:by |rJoDgvdeG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1572885625576) (:by |rJoDgvdeG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1572885625576) (:by |rJoDgvdeG) (:text |val-of-first) (:type :leaf)
              |r $ {} (:at 1572885625576) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1572885629777) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
              |v $ {} (:at 1572885630329) (:by |rJoDgvdeG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1572885631743) (:by |rJoDgvdeG) (:text |last) (:type :leaf)
                  |j $ {} (:at 1572885632356) (:by |rJoDgvdeG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1572885634056) (:by |rJoDgvdeG) (:text |first) (:type :leaf)
                      |j $ {} (:at 1572885732132) (:by |rJoDgvdeG) (:text |x) (:type :leaf)
        :ns $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1504774121421) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.list) (:type :leaf)
            |r $ {} (:at 1504774121421) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1504774121421) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1504774121421) (:by nil) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1504774121421) (:by |root) (:text |respo.util.detect) (:type :leaf)
                    |r $ {} (:at 1504774121421) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1504774121421) (:by nil) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1504774121421) (:by |root) (:text |component?) (:type :leaf)
                        |r $ {} (:at 1504774121421) (:by |root) (:text |element?) (:type :leaf)
        :proc $ {} (:at 1504774121421) (:by nil) (:type :expr)
          :data $ {}
  :users $ {}
    |rJoDgvdeG $ {} (:avatar nil) (:id |rJoDgvdeG) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
