
{} (:package |respo)
  :configs $ {} (:init-fn |respo.main/main!) (:port 6001) (:reload-fn |respo.main/reload!) (:storage-key |calcit.cirru) (:version |0.16.11)
    :modules $ [] |memof/ |lilac/ |calcit-test/
  :entries $ {}
  :files $ {}
    |respo.app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584718727659) (:by |rJoDgvdeG) (:text |states)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1706301894578) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1710959776036) (:by |rJoDgvdeG) (:text |;)
                              |T $ %{} :Leaf (:at 1706301896327) (:by |rJoDgvdeG) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1706301896626) (:by |rJoDgvdeG) (:text |highlight-defcomp)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-global)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-todolist)
                          |v $ %{} :Leaf (:at 1584718729784) (:by |rJoDgvdeG) (:text |states)
                          |x $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:tasks)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                      |s $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-states)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |<>)
                              |r $ %{} :Expr (:at 1515895708075) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1515895708881) (:by |rJoDgvdeG) (:text |str)
                                  |L $ %{} :Leaf (:at 1623582927810) (:by |rJoDgvdeG) (:text "||states: ")
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1693242544168) (:by |rJoDgvdeG) (:text |to-lispy-string)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1505327099898) (:by |root) (:text |:states)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                      |t $ %{} :Expr (:at 1656036581270) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1656036584992) (:by |rJoDgvdeG) (:text |comp-global-keydown)
                          |X $ %{} :Expr (:at 1656036736229) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1656036736614) (:by |rJoDgvdeG) (:text |{})
                              |b $ %{} :Expr (:at 1656036737351) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036756646) (:by |rJoDgvdeG) (:text |:disabled-commands)
                                  |b $ %{} :Expr (:at 1656036867350) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1656036894841) (:by |rJoDgvdeG) (:text |#{})
                                      |b $ %{} :Leaf (:at 1656036980245) (:by |rJoDgvdeG) (:text "|\"s")
                                      |h $ %{} :Leaf (:at 1656036982066) (:by |rJoDgvdeG) (:text "|\"p")
                          |b $ %{} :Expr (:at 1656036585590) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1656036586012) (:by |rJoDgvdeG) (:text |fn)
                              |b $ %{} :Expr (:at 1656036586746) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036588563) (:by |rJoDgvdeG) (:text |e)
                                  |b $ %{} :Leaf (:at 1656036589332) (:by |rJoDgvdeG) (:text |d!)
                              |h $ %{} :Expr (:at 1656036590111) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036593406) (:by |rJoDgvdeG) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1656036697578) (:by |rJoDgvdeG) (:text "|\"keydown")
                                  |h $ %{} :Leaf (:at 1656036595798) (:by |rJoDgvdeG) (:text |e)
                      |u $ %{} :Expr (:at 1656036581270) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1699983962961) (:by |rJoDgvdeG) (:text |comp-global-keyup)
                          |X $ %{} :Expr (:at 1656036736229) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1656036736614) (:by |rJoDgvdeG) (:text |{})
                              |b $ %{} :Expr (:at 1656036737351) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036756646) (:by |rJoDgvdeG) (:text |:disabled-commands)
                                  |b $ %{} :Expr (:at 1656036867350) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1656036894841) (:by |rJoDgvdeG) (:text |#{})
                                      |b $ %{} :Leaf (:at 1656036980245) (:by |rJoDgvdeG) (:text "|\"s")
                                      |h $ %{} :Leaf (:at 1656036982066) (:by |rJoDgvdeG) (:text "|\"p")
                          |b $ %{} :Expr (:at 1656036585590) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1656036586012) (:by |rJoDgvdeG) (:text |fn)
                              |b $ %{} :Expr (:at 1656036586746) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036588563) (:by |rJoDgvdeG) (:text |e)
                                  |b $ %{} :Leaf (:at 1656036589332) (:by |rJoDgvdeG) (:text |d!)
                              |h $ %{} :Expr (:at 1656036590111) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036593406) (:by |rJoDgvdeG) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1699983972260) (:by |rJoDgvdeG) (:text "|\"keyup")
                                  |h $ %{} :Leaf (:at 1656036595798) (:by |rJoDgvdeG) (:text |e)
        |style-global $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-global)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||Avenir,Verdana)
        |style-states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-states)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |8)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.container)
            |v $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |f $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540830018171) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508915063808) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |<>)
                        |yT $ %{} :Leaf (:at 1584718739742) (:by |rJoDgvdeG) (:text |>>)
                        |yj $ %{} :Leaf (:at 1610440507879) (:by |rJoDgvdeG) (:text |a)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.todolist)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-todolist)
                |x $ %{} :Expr (:at 1592134715191) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1592134718074) (:by |rJoDgvdeG) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1592134718793) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1592134718980) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1592134722022) (:by |rJoDgvdeG) (:text |=<)
                |y $ %{} :Expr (:at 1656036562023) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1656036571371) (:by |rJoDgvdeG) (:text |respo.comp.global-keydown)
                    |b $ %{} :Leaf (:at 1656036572678) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1656036572901) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1656036578628) (:by |rJoDgvdeG) (:text |comp-global-keydown)
                        |b $ %{} :Leaf (:at 1699983983431) (:by |rJoDgvdeG) (:text |comp-global-keyup)
                |z $ %{} :Expr (:at 1706301877428) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1706301882723) (:by |rJoDgvdeG) (:text |respo.comp.inspect)
                    |b $ %{} :Leaf (:at 1706301883949) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1706301884285) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1706301887610) (:by |rJoDgvdeG) (:text |highlight-defcomp)
    |respo.app.comp.task $ %{} :FileEntry
      :defs $ {}
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1536679003089) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-task)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |D $ %{} :Expr (:at 1584719172690) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584719173865) (:by |rJoDgvdeG) (:text |cursor)
                          |j $ %{} :Expr (:at 1584719174123) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584719176906) (:by |rJoDgvdeG) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1584719177962) (:by |rJoDgvdeG) (:text |states)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610212419277) (:by |rJoDgvdeG) (:text |either)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |states)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||)
                  |r $ %{} :Expr (:at 1571586889509) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1571586890799) (:by |rJoDgvdeG) (:text |[])
                      |L $ %{} :Expr (:at 1571586895374) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571586927464) (:by |rJoDgvdeG) (:text |effect-log)
                          |j $ %{} :Leaf (:at 1572083411761) (:by |rJoDgvdeG) (:text |task)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1685804041444) (:by |rJoDgvdeG) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1705596648151) (:by |rJoDgvdeG) (:text |style-task)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-inspect)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||Task)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:left)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |200)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1651180847678) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651180850144) (:by |rJoDgvdeG) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1651180850506) (:by |rJoDgvdeG) (:text |style-done)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1710960182689) (:by |rJoDgvdeG) (:text |:background-color)
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:done?)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |200)
                                                      |r $ %{} :Leaf (:at 1549948909284) (:by |rJoDgvdeG) (:text |20)
                                                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |80)
                                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |200)
                                                      |r $ %{} :Leaf (:at 1549948914057) (:by |rJoDgvdeG) (:text |80)
                                                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |70)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1513785917865) (:by |root) (:text |:on-click)
                                      |r $ %{} :Expr (:at 1584719149495) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1584719150633) (:by |rJoDgvdeG) (:text |fn)
                                          |L $ %{} :Expr (:at 1584719150856) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584719151115) (:by |rJoDgvdeG) (:text |e)
                                              |j $ %{} :Leaf (:at 1584719151808) (:by |rJoDgvdeG) (:text |d!)
                                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584719153664) (:by |rJoDgvdeG) (:text |d!)
                                              |j $ %{} :Expr (:at 1687721437704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1687721438608) (:by |rJoDgvdeG) (:text |:)
                                                  |T $ %{} :Leaf (:at 1687721439703) (:by |rJoDgvdeG) (:text |toggle)
                                                  |b $ %{} :Expr (:at 1687721442267) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1687721442267) (:by |rJoDgvdeG) (:text |:id)
                                                      |b $ %{} :Leaf (:at 1687721442267) (:by |rJoDgvdeG) (:text |task)
                          |x $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |8)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                          |y $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |input)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:value)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:text)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651181046534) (:by |rJoDgvdeG) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1651181043400) (:by |rJoDgvdeG) (:text |widget/style-input)
                                  |v $ %{} :Expr (:at 1505382679150) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1513785912794) (:by |root) (:text |:on-input)
                                      |j $ %{} :Expr (:at 1584719129318) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1584719129318) (:by |rJoDgvdeG) (:text |fn)
                                          |j $ %{} :Expr (:at 1584719129318) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584719163429) (:by |rJoDgvdeG) (:text |e)
                                              |j $ %{} :Leaf (:at 1584719164292) (:by |rJoDgvdeG) (:text |d!)
                                          |r $ %{} :Expr (:at 1584719129318) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584719129318) (:by |rJoDgvdeG) (:text |let)
                                              |j $ %{} :Expr (:at 1584719129318) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1584719129318) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584719129318) (:by |rJoDgvdeG) (:text |task-id)
                                                      |j $ %{} :Expr (:at 1584719129318) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1584719129318) (:by |rJoDgvdeG) (:text |:id)
                                                          |j $ %{} :Leaf (:at 1584719129318) (:by |rJoDgvdeG) (:text |task)
                                                  |j $ %{} :Expr (:at 1584719129318) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584719129318) (:by |rJoDgvdeG) (:text |text)
                                                      |j $ %{} :Expr (:at 1584719129318) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1584719129318) (:by |rJoDgvdeG) (:text |:value)
                                                          |j $ %{} :Leaf (:at 1584719160982) (:by |rJoDgvdeG) (:text |e)
                                              |r $ %{} :Expr (:at 1584719129318) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584719134707) (:by |rJoDgvdeG) (:text |d!)
                                                  |j $ %{} :Expr (:at 1687721444549) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1687721445713) (:by |rJoDgvdeG) (:text |:)
                                                      |T $ %{} :Leaf (:at 1687721446857) (:by |rJoDgvdeG) (:text |update)
                                                      |X $ %{} :Leaf (:at 1687721454103) (:by |rJoDgvdeG) (:text |task-id)
                                                      |Z $ %{} :Leaf (:at 1687721455454) (:by |rJoDgvdeG) (:text |text)
                          |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |8)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                          |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |input)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:value)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |state)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651181061428) (:by |rJoDgvdeG) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1651181064305) (:by |rJoDgvdeG) (:text |widget/style-input)
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1513786754951) (:by |root) (:text |:on-input)
                                      |j $ %{} :Expr (:at 1584719089367) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1584719090017) (:by |rJoDgvdeG) (:text |fn)
                                          |L $ %{} :Expr (:at 1584719090626) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584719090845) (:by |rJoDgvdeG) (:text |e)
                                              |j $ %{} :Leaf (:at 1584719091699) (:by |rJoDgvdeG) (:text |d!)
                                          |P $ %{} :Expr (:at 1584719094021) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584719094932) (:by |rJoDgvdeG) (:text |d!)
                                              |j $ %{} :Leaf (:at 1584719096043) (:by |rJoDgvdeG) (:text |cursor)
                                              |r $ %{} :Expr (:at 1584719097135) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584719097786) (:by |rJoDgvdeG) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1584720105188) (:by |rJoDgvdeG) (:text |e)
                          |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |8)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                          |yv $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                                  |n $ %{} :Expr (:at 1651176559735) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651176561461) (:by |rJoDgvdeG) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1691559907639) (:by |rJoDgvdeG) (:text |widget/style-button)
                                  |r $ %{} :Expr (:at 1515603131600) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1515603136628) (:by |root) (:text |:on-click)
                                      |T $ %{} :Expr (:at 1584719102767) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1584719103368) (:by |rJoDgvdeG) (:text |fn)
                                          |L $ %{} :Expr (:at 1584719103687) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584719103914) (:by |rJoDgvdeG) (:text |e)
                                              |j $ %{} :Leaf (:at 1584719104519) (:by |rJoDgvdeG) (:text |d!)
                                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584719108258) (:by |rJoDgvdeG) (:text |d!)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:remove)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |<>)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||Remove)
                          |yx $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |8)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                          |yy $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |<>)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |state)
        |effect-log $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1571586937354) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1571586939749) (:by |rJoDgvdeG) (:text |defeffect)
              |j $ %{} :Leaf (:at 1571586937354) (:by |rJoDgvdeG) (:text |effect-log)
              |r $ %{} :Expr (:at 1571586937354) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571586950105) (:by |rJoDgvdeG) (:text |task)
              |x $ %{} :Expr (:at 1571586952422) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571586957133) (:by |rJoDgvdeG) (:text |action)
                  |j $ %{} :Leaf (:at 1571586961474) (:by |rJoDgvdeG) (:text |parent)
                  |v $ %{} :Leaf (:at 1572885426290) (:by |rJoDgvdeG) (:text |at-place?)
              |y $ %{} :Expr (:at 1571586962138) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1584720137605) (:by |rJoDgvdeG) (:text |;)
                  |T $ %{} :Leaf (:at 1571586967079) (:by |rJoDgvdeG) (:text |js/console.log)
                  |j $ %{} :Leaf (:at 1571586977512) (:by |rJoDgvdeG) (:text "|\"Task effect")
                  |x $ %{} :Leaf (:at 1571586982894) (:by |rJoDgvdeG) (:text |action)
                  |y $ %{} :Leaf (:at 1572885427880) (:by |rJoDgvdeG) (:text |at-place?)
              |yT $ %{} :Expr (:at 1572086688548) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1643704195073) (:by |rJoDgvdeG) (:text |case-default)
                  |j $ %{} :Leaf (:at 1572086691733) (:by |rJoDgvdeG) (:text |action)
                  |n $ %{} :Leaf (:at 1643707442256) (:by |rJoDgvdeG) (:text |nil)
                  |r $ %{} :Expr (:at 1572086692002) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572086697795) (:by |rJoDgvdeG) (:text |:mount)
                      |j $ %{} :Expr (:at 1572086730754) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1572086731349) (:by |rJoDgvdeG) (:text |let)
                          |L $ %{} :Expr (:at 1572086731782) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1572086732615) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572086733624) (:by |rJoDgvdeG) (:text |x0)
                                  |j $ %{} :Expr (:at 1572086734358) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572086734358) (:by |rJoDgvdeG) (:text |js/Math.random)
                          |j $ %{} :Expr (:at 1572086743497) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1584720182535) (:by |rJoDgvdeG) (:text |;)
                              |T $ %{} :Leaf (:at 1572086744295) (:by |rJoDgvdeG) (:text |println)
                              |j $ %{} :Leaf (:at 1572086747755) (:by |rJoDgvdeG) (:text "|\"Stored")
                              |r $ %{} :Leaf (:at 1572086749463) (:by |rJoDgvdeG) (:text |x0)
                          |r $ %{} :Leaf (:at 1619539324128) (:by |rJoDgvdeG) (:text |nil)
                  |v $ %{} :Expr (:at 1572086750609) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572086751544) (:by |rJoDgvdeG) (:text |:update)
                      |j $ %{} :Expr (:at 1572086751819) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1584720178072) (:by |rJoDgvdeG) (:text |;)
                          |T $ %{} :Leaf (:at 1572086755689) (:by |rJoDgvdeG) (:text |println)
                          |j $ %{} :Leaf (:at 1572086756916) (:by |rJoDgvdeG) (:text "|\"read")
                      |r $ %{} :Leaf (:at 1619539168024) (:by |rJoDgvdeG) (:text |nil)
                  |x $ %{} :Expr (:at 1572086765428) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572086766906) (:by |rJoDgvdeG) (:text |:unmount)
                      |j $ %{} :Expr (:at 1572086770977) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1584720180800) (:by |rJoDgvdeG) (:text |;)
                          |T $ %{} :Leaf (:at 1584720180308) (:by |rJoDgvdeG) (:text |println)
                          |j $ %{} :Leaf (:at 1572086770977) (:by |rJoDgvdeG) (:text "|\"read")
                      |r $ %{} :Leaf (:at 1619539170693) (:by |rJoDgvdeG) (:text |nil)
        |style-done $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651180825590) (:by |rJoDgvdeG) (:text |defstyle)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-done)
              |r $ %{} :Expr (:at 1651180822430) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651180832034) (:by |rJoDgvdeG) (:text |{})
                  |T $ %{} :Expr (:at 1651180832722) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1706302948410) (:by |rJoDgvdeG) (:text |:&)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:width)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |32)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:height)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |32)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:outline)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:none)
                          |x $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:border)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:none)
                          |y $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:vertical-align)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:middle)
                          |z $ %{} :Expr (:at 1710960189920) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710960191922) (:by |rJoDgvdeG) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1710960192951) (:by |rJoDgvdeG) (:text |:pointer)
        |style-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1685804025593) (:by |rJoDgvdeG) (:text |defstyle)
              |j $ %{} :Leaf (:at 1705596639034) (:by |rJoDgvdeG) (:text |style-task)
              |r $ %{} :Expr (:at 1685804026639) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1685804027288) (:by |rJoDgvdeG) (:text |{})
                  |T $ %{} :Expr (:at 1685804028443) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1685804030296) (:by |rJoDgvdeG) (:text "|\"&")
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:display)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:flex)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||4px 0px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.task)
            |v $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |b $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540830039824) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508915091929) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                        |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |input)
                        |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |<>)
                        |yv $ %{} :Leaf (:at 1571586991762) (:by |rJoDgvdeG) (:text |defeffect)
                |j $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610031661069) (:by |rJoDgvdeG) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-inspect)
                |y $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.style.widget)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |widget)
                |z $ %{} :Expr (:at 1651180811864) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651180814417) (:by |rJoDgvdeG) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651180816493) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1651180816793) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651180818894) (:by |rJoDgvdeG) (:text |defstyle)
    |respo.app.comp.todolist $ %{} :FileEntry
      :defs $ {}
        |comp-todolist $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1536678904198) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-todolist)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |D $ %{} :Expr (:at 1584718933236) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584718934262) (:by |rJoDgvdeG) (:text |cursor)
                          |j $ %{} :Expr (:at 1584872700149) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610211668152) (:by |rJoDgvdeG) (:text |either)
                              |T $ %{} :Expr (:at 1584718934490) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584718936300) (:by |rJoDgvdeG) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1584718936996) (:by |rJoDgvdeG) (:text |states)
                              |j $ %{} :Expr (:at 1584872701364) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584872702117) (:by |rJoDgvdeG) (:text |[])
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610211670068) (:by |rJoDgvdeG) (:text |either)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |states)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |initial-state)
                  |r $ %{} :Expr (:at 1571574450097) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1571574450942) (:by |rJoDgvdeG) (:text |[])
                      |L $ %{} :Expr (:at 1571574456411) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571574459596) (:by |rJoDgvdeG) (:text |effect-focus)
                      |f $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |div)
                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1705596407168) (:by |rJoDgvdeG) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1705596410178) (:by |rJoDgvdeG) (:text |style-todo-root)
                              |n $ %{} :Expr (:at 1710342003984) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710344400705) (:by |rJoDgvdeG) (:text |:data-name)
                                  |b $ %{} :Leaf (:at 1710342684369) (:by |rJoDgvdeG) (:text "|\"todolist")
                          |n $ %{} :Expr (:at 1678121659036) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1678122870185) (:by |rJoDgvdeG) (:text |;)
                              |T $ %{} :Leaf (:at 1678121659661) (:by |rJoDgvdeG) (:text |a)
                              |b $ %{} :Expr (:at 1678121660095) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1678121660386) (:by |rJoDgvdeG) (:text |{})
                                  |b $ %{} :Expr (:at 1678121661504) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1678122493464) (:by |rJoDgvdeG) (:text |;)
                                      |T $ %{} :Leaf (:at 1678121661918) (:by |rJoDgvdeG) (:text |:href)
                                      |b $ %{} :Leaf (:at 1678122874893) (:by |rJoDgvdeG) (:text "|\"A")
                                  |e $ %{} :Expr (:at 1678121845271) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1678122406018) (:by |rJoDgvdeG) (:text |;)
                                      |T $ %{} :Leaf (:at 1678121844978) (:by |rJoDgvdeG) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1678122876025) (:by |rJoDgvdeG) (:text "|\"B")
                                  |h $ %{} :Expr (:at 1678121682620) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1678122409758) (:by |rJoDgvdeG) (:text |;)
                                      |T $ %{} :Leaf (:at 1678121685292) (:by |rJoDgvdeG) (:text |:inner-text)
                                      |b $ %{} :Leaf (:at 1678122877167) (:by |rJoDgvdeG) (:text "|\"C")
                                  |l $ %{} :Expr (:at 1678122033141) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1678122475532) (:by |rJoDgvdeG) (:text |;)
                                      |T $ %{} :Leaf (:at 1678122039614) (:by |rJoDgvdeG) (:text |:height)
                                      |b $ %{} :Leaf (:at 1678122226753) (:by |rJoDgvdeG) (:text "|\"100px")
                          |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-inspect)
                              |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text ||States)
                              |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |state)
                              |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:left)
                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text ||80px)
                          |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |div)
                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style)
                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |style-panel)
                              |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |input)
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:placeholder)
                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text "|\"Text")
                                      |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:value)
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:draft)
                                              |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |state)
                                      |t $ %{} :Expr (:at 1651181086495) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651181091202) (:by |rJoDgvdeG) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1651181093107) (:by |rJoDgvdeG) (:text |widget/style-input)
                                      |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style)
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:width)
                                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |&max)
                                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |200)
                                                      |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |+)
                                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |24)
                                                          |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |text-width)
                                                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:draft)
                                                                  |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |state)
                                                              |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |16)
                                                              |v $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text ||BlinkMacSystemFont)
                                      |x $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-input)
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn)
                                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |e)
                                                  |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                              |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |cursor)
                                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |assoc)
                                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |state)
                                                      |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:draft)
                                                      |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:value)
                                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |e)
                                      |y $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-focus)
                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |on-focus)
                              |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<)
                                  |j $ %{} :Leaf (:at 1621412996120) (:by |rJoDgvdeG) (:text |8)
                                  |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil)
                              |x $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |span)
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                      |n $ %{} :Expr (:at 1651175827683) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651175830269) (:by |rJoDgvdeG) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1691559918584) (:by |rJoDgvdeG) (:text |widget/style-button)
                                      |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn)
                                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |e)
                                                  |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                              |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                                  |j $ %{} :Expr (:at 1687721398570) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1687721399165) (:by |rJoDgvdeG) (:text |:)
                                                      |T $ %{} :Leaf (:at 1687721400405) (:by |rJoDgvdeG) (:text |add)
                                                      |b $ %{} :Expr (:at 1687721403326) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1687721403326) (:by |rJoDgvdeG) (:text |:draft)
                                                          |b $ %{} :Leaf (:at 1687721403326) (:by |rJoDgvdeG) (:text |state)
                                              |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |cursor)
                                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |assoc)
                                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |state)
                                                      |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:draft)
                                                      |v $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text ||)
                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |span)
                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click)
                                              |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil)
                                          |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:inner-text)
                                              |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text "|\"Add")
                              |y $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<)
                                  |j $ %{} :Leaf (:at 1621413802208) (:by |rJoDgvdeG) (:text |8)
                                  |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil)
                              |yT $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |span)
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text ||Clear)
                                      |r $ %{} :Expr (:at 1651178815442) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651178815442) (:by |rJoDgvdeG) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1691559919956) (:by |rJoDgvdeG) (:text |widget/style-button)
                                      |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn)
                                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |e)
                                                  |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                              |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                                  |j $ %{} :Expr (:at 1710341406498) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1710341407177) (:by |rJoDgvdeG) (:text |::)
                                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:clear)
                              |yj $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<)
                                  |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |8)
                                  |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil)
                              |yr $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |div)
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |div)
                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                          |j $ %{} :Expr (:at 1651178817288) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651178817288) (:by |rJoDgvdeG) (:text |:class-name)
                                              |b $ %{} :Leaf (:at 1691559921488) (:by |rJoDgvdeG) (:text |widget/style-button)
                                          |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click)
                                              |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |on-test)
                                      |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |<>)
                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text "||heavy tasks")
                                          |n $ %{} :Leaf (:at 1705596668699) (:by |rJoDgvdeG) (:text |style-bold!)
                          |x $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |list->)
                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text ||task-list)
                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:style)
                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |style-list)
                              |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619540196513) (:by |rJoDgvdeG) (:text |->)
                                  |b $ %{} :Leaf (:at 1619540203781) (:by |rJoDgvdeG) (:text |tasks)
                                  |f $ %{} :Leaf (:at 1645978993302) (:by |rJoDgvdeG) (:text |.to-list)
                                  |r $ %{} :Leaf (:at 1623693595033) (:by |rJoDgvdeG) (:text |.reverse)
                                  |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |map)
                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn)
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |task)
                                          |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |let)
                                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |task-id)
                                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:id)
                                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |task)
                                              |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |[])
                                                  |f $ %{} :Leaf (:at 1673973110070) (:by |rJoDgvdeG) (:text |task-id)
                                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1659197868835) (:by |rJoDgvdeG) (:text |memof1-call-by)
                                                      |L $ %{} :Leaf (:at 1659197930259) (:by |rJoDgvdeG) (:text |task-id)
                                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-task)
                                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |>>)
                                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |states)
                                                          |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |task-id)
                                                      |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |task)
                          |y $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |if)
                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |>)
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |count)
                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |tasks)
                                  |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |0)
                              |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |div)
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:spell-check)
                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |true)
                                      |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1706301660402) (:by |rJoDgvdeG) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |style-toolbar)
                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |div)
                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1706301374852) (:by |rJoDgvdeG) (:text |:class-name)
                                              |j $ %{} :Leaf (:at 1706301524355) (:by |rJoDgvdeG) (:text |widget/style-button)
                                          |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click)
                                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610291519635) (:by |rJoDgvdeG) (:text |if)
                                                  |j $ %{} :Expr (:at 1610291520211) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1610291520818) (:by |rJoDgvdeG) (:text |not)
                                                      |T $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:locked?)
                                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |state)
                                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn)
                                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |e)
                                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                                      |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                                          |j $ %{} :Expr (:at 1687721411869) (:by |rJoDgvdeG)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1687721412418) (:by |rJoDgvdeG) (:text |:)
                                                              |T $ %{} :Leaf (:at 1687721413568) (:by |rJoDgvdeG) (:text |clear)
                                      |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |<>)
                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text ||Clear2)
                                  |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<)
                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |8)
                                      |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil)
                                  |x $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |div)
                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1706301377614) (:by |rJoDgvdeG) (:text |:class-name)
                                              |j $ %{} :Leaf (:at 1706301528802) (:by |rJoDgvdeG) (:text |widget/style-button)
                                          |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:on-click)
                                              |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |fn)
                                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |e)
                                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |update)
                                                          |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |state)
                                                          |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:locked?)
                                                          |v $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |not)
                                      |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |<>)
                                          |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651251976345) (:by |rJoDgvdeG) (:text |str-spaced)
                                              |j $ %{} :Leaf (:at 1651251974652) (:by |rJoDgvdeG) (:text ||Lock?)
                                              |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:locked?)
                                                  |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |state)
                                          |n $ %{} :Expr (:at 1651251978587) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651251978892) (:by |rJoDgvdeG) (:text |{})
                                              |b $ %{} :Expr (:at 1651251979148) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651251985187) (:by |rJoDgvdeG) (:text |:font-size)
                                                  |b $ %{} :Leaf (:at 1651251988594) (:by |rJoDgvdeG) (:text |13)
                                  |y $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |=<)
                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |8)
                                      |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |nil)
                                  |yT $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-wrap)
                                      |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-zero)
                          |yT $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |comp-inspect)
                              |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text ||Tasks)
                              |r $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |tasks)
                              |v $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |{})
                                  |j $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:left)
                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |500)
                                  |r $ %{} :Expr (:at 1610203915704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |:top)
                                      |j $ %{} :Leaf (:at 1610203915704) (:by |rJoDgvdeG) (:text |20)
        |effect-focus $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1571574470979) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1571574484158) (:by |rJoDgvdeG) (:text |defeffect)
              |j $ %{} :Leaf (:at 1571574470979) (:by |rJoDgvdeG) (:text |effect-focus)
              |r $ %{} :Expr (:at 1571574470979) (:by |rJoDgvdeG)
                :data $ {}
              |x $ %{} :Expr (:at 1571574488737) (:by |rJoDgvdeG)
                :data $ {}
                  |j $ %{} :Leaf (:at 1571574491586) (:by |rJoDgvdeG) (:text |action)
                  |r $ %{} :Leaf (:at 1571574495520) (:by |rJoDgvdeG) (:text |parent)
                  |v $ %{} :Leaf (:at 1594556638235) (:by |rJoDgvdeG) (:text |at-place?)
              |y $ %{} :Expr (:at 1571847133611) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571847139132) (:by |rJoDgvdeG) (:text |js/console.log)
                  |j $ %{} :Leaf (:at 1571847149555) (:by |rJoDgvdeG) (:text "|\"todolist effect:")
                  |r $ %{} :Leaf (:at 1571935522848) (:by |rJoDgvdeG) (:text |action)
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |initial-state)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:draft)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:locked?)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |false)
        |number-order $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612347200111) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1612347201936) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1612347200111) (:by |rJoDgvdeG) (:text |number-order)
              |r $ %{} :Expr (:at 1612347200111) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612347206935) (:by |rJoDgvdeG) (:text |a)
                  |j $ %{} :Leaf (:at 1612347207259) (:by |rJoDgvdeG) (:text |b)
              |v $ %{} :Expr (:at 1612347207903) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612347211272) (:by |rJoDgvdeG) (:text |if)
                  |j $ %{} :Expr (:at 1612347212106) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612347216078) (:by |rJoDgvdeG) (:text |&<)
                      |j $ %{} :Leaf (:at 1612347216397) (:by |rJoDgvdeG) (:text |a)
                      |r $ %{} :Leaf (:at 1612347216762) (:by |rJoDgvdeG) (:text |b)
                  |r $ %{} :Leaf (:at 1612347219234) (:by |rJoDgvdeG) (:text |-1)
                  |v $ %{} :Expr (:at 1612347220020) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612347220816) (:by |rJoDgvdeG) (:text |if)
                      |j $ %{} :Expr (:at 1612347223270) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612347225021) (:by |rJoDgvdeG) (:text |&>)
                          |j $ %{} :Leaf (:at 1612347225724) (:by |rJoDgvdeG) (:text |a)
                          |r $ %{} :Leaf (:at 1612347226440) (:by |rJoDgvdeG) (:text |b)
                      |r $ %{} :Leaf (:at 1612347227687) (:by |rJoDgvdeG) (:text |1)
                      |v $ %{} :Leaf (:at 1612347229450) (:by |rJoDgvdeG) (:text |0)
        |on-focus $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |on-focus)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |e)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dispatch!)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||Just focused~")
        |on-test $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |on-test)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |e)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dispatch!)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||trigger test!")
              |y $ %{} :Expr (:at 1509168148061) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1647337832928) (:by |rJoDgvdeG) (:text |try-test!)
                  |j $ %{} :Leaf (:at 1509168150129) (:by |root) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1509168426017) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509168426291) (:by |root) (:text |[])
        |style-bold! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651251923461) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1651251926479) (:by |rJoDgvdeG) (:text |defstyle)
              |b $ %{} :Leaf (:at 1705596657341) (:by |rJoDgvdeG) (:text |style-bold!)
              |h $ %{} :Expr (:at 1651251923461) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651251935862) (:by |rJoDgvdeG) (:text |{})
                  |b $ %{} :Expr (:at 1651251936490) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1705596692938) (:by |rJoDgvdeG) (:text "|\"&")
                      |b $ %{} :Expr (:at 1651251938261) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651251938552) (:by |rJoDgvdeG) (:text |{})
                          |b $ %{} :Expr (:at 1651251939228) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651251941382) (:by |rJoDgvdeG) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1691559964820) (:by |rJoDgvdeG) (:text "|\"bold !important")
        |style-list $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-list)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:color)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:black)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:background-color)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |120)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |20)
                          |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |98)
        |style-panel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-panel)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:flex)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:margin-bottom)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |4)
        |style-todo-root $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1705596392475) (:by |rJoDgvdeG) (:text |defstyle)
              |j $ %{} :Leaf (:at 1705596389870) (:by |rJoDgvdeG) (:text |style-todo-root)
              |r $ %{} :Expr (:at 1705596394625) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1705596396741) (:by |rJoDgvdeG) (:text |{})
                  |T $ %{} :Expr (:at 1705596397202) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1705596398628) (:by |rJoDgvdeG) (:text "|\"&")
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:color)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:black)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:background-color)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |120)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |20)
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |98)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||24px)
                          |x $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1549948863953) (:by |rJoDgvdeG) (:text "|\"font-size")
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |16)
                          |y $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |10)
                          |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:font-family)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||\"微软雅黑\", Verdana")
        |style-toolbar $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1706301651859) (:by |rJoDgvdeG) (:text |defstyle)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-toolbar)
              |r $ %{} :Expr (:at 1706301653281) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1706301653735) (:by |rJoDgvdeG) (:text |{})
                  |T $ %{} :Expr (:at 1706301654274) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1706301655692) (:by |rJoDgvdeG) (:text "|\"&")
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:display)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:flex)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:flex-direction)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:row)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:justify-content)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:start)
                          |x $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1540830107261) (:by |root) (:text "|\"4px 0")
                          |y $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:white-space)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:nowrap)
        |try-test! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1509168137711) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1509168140715) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1647337830172) (:by |rJoDgvdeG) (:text |try-test!)
              |n $ %{} :Expr (:at 1509168141638) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1509168221837) (:by |root) (:text |dispatch!)
                  |j $ %{} :Leaf (:at 1509168431012) (:by |root) (:text |acc)
              |r $ %{} :Expr (:at 1509168137711) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1509168137711) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1509168137711) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |started)
                          |j $ %{} :Expr (:at 1647337792089) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1647337792089) (:by |rJoDgvdeG) (:text |js/Date.now)
                  |n $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1710341505396) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1710341506056) (:by |rJoDgvdeG) (:text |::)
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:clear)
                  |r $ %{} :Expr (:at 1509168137711) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |loop)
                      |j $ %{} :Expr (:at 1510373650726) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1509168137711) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |x)
                              |r $ %{} :Leaf (:at 1623584447767) (:by |rJoDgvdeG) (:text |20)
                      |r $ %{} :Expr (:at 1509168137711) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |dispatch!)
                          |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |:add)
                          |r $ %{} :Leaf (:at 1509168137711) (:by |root) (:text ||empty)
                      |v $ %{} :Expr (:at 1509168137711) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1509168137711) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |>)
                              |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |x)
                              |r $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |0)
                          |r $ %{} :Expr (:at 1509168137711) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |recur)
                              |j $ %{} :Expr (:at 1509168137711) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |dec)
                                  |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |x)
                  |v $ %{} :Expr (:at 1509168137711) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |loop)
                      |j $ %{} :Expr (:at 1510373648352) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1509168137711) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |x)
                              |r $ %{} :Leaf (:at 1611312933529) (:by |rJoDgvdeG) (:text |20)
                      |r $ %{} :Expr (:at 1509168137711) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |dispatch!)
                          |j $ %{} :Expr (:at 1687721513336) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1687721514793) (:by |rJoDgvdeG) (:text |:)
                              |T $ %{} :Leaf (:at 1687721516480) (:by |rJoDgvdeG) (:text |hit-first)
                              |b $ %{} :Expr (:at 1687721519265) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1687721519265) (:by |rJoDgvdeG) (:text |js/Math.random)
                      |v $ %{} :Expr (:at 1509168137711) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1509168137711) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |>)
                              |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |x)
                              |r $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |0)
                          |r $ %{} :Expr (:at 1509168137711) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |recur)
                              |j $ %{} :Expr (:at 1509168137711) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |dec)
                                  |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |x)
                  |x $ %{} :Expr (:at 1509168137711) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1710341502238) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1710341503219) (:by |rJoDgvdeG) (:text |::)
                          |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |:clear)
                  |y $ %{} :Expr (:at 1509168137711) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |loop)
                      |j $ %{} :Expr (:at 1510373654172) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1509168137711) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |x)
                              |r $ %{} :Leaf (:at 1611312951431) (:by |rJoDgvdeG) (:text |10)
                      |r $ %{} :Expr (:at 1509168137711) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |dispatch!)
                          |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |:add)
                          |r $ %{} :Leaf (:at 1509168137711) (:by |root) (:text "||only 10 items")
                      |v $ %{} :Expr (:at 1509168137711) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1509168137711) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |>)
                              |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |x)
                              |r $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |0)
                          |r $ %{} :Expr (:at 1509168137711) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |recur)
                              |j $ %{} :Expr (:at 1509168137711) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |dec)
                                  |j $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |x)
                  |yj $ %{} :Expr (:at 1509168454003) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1509168454759) (:by |root) (:text |let)
                      |L $ %{} :Expr (:at 1509168455004) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1509168455590) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509168456193) (:by |root) (:text |cost)
                              |j $ %{} :Expr (:at 1509168137711) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |-)
                                  |f $ %{} :Expr (:at 1647337793847) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647337793847) (:by |rJoDgvdeG) (:text |js/Date.now)
                                  |r $ %{} :Leaf (:at 1509168137711) (:by |root) (:text |started)
                      |T $ %{} :Expr (:at 1509168186760) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1509168187694) (:by |root) (:text |if)
                          |L $ %{} :Expr (:at 1509168192591) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1509168440280) (:by |root) (:text |<)
                              |L $ %{} :Expr (:at 1509168435561) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509168435203) (:by |root) (:text |count)
                                  |j $ %{} :Leaf (:at 1509168438004) (:by |root) (:text |acc)
                              |T $ %{} :Leaf (:at 1623584942046) (:by |rJoDgvdeG) (:text |40)
                          |T $ %{} :Expr (:at 1509168181449) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509168183634) (:by |root) (:text |js/setTimeout)
                              |b $ %{} :Expr (:at 1509168200951) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509168201003) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1509168202162) (:by |root)
                                    :data $ {}
                                  |r $ %{} :Expr (:at 1509168204270) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647337825043) (:by |rJoDgvdeG) (:text |try-test!)
                                      |j $ %{} :Leaf (:at 1509168214335) (:by |root) (:text |dispatch!)
                                      |r $ %{} :Expr (:at 1509168478201) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1509168478710) (:by |root) (:text |conj)
                                          |j $ %{} :Leaf (:at 1509168514886) (:by |root) (:text |acc)
                                          |r $ %{} :Leaf (:at 1509168485475) (:by |root) (:text |cost)
                              |j $ %{} :Leaf (:at 1509168535016) (:by |root) (:text |0)
                          |j $ %{} :Expr (:at 1509168487516) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509168739638) (:by |root) (:text |println)
                              |j $ %{} :Leaf (:at 1509168497610) (:by |root) (:text ||result:)
                              |r $ %{} :Expr (:at 1509168498404) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1509168498959) (:by |root) (:text |sort)
                                  |j $ %{} :Leaf (:at 1509168501346) (:by |root) (:text |acc)
                                  |r $ %{} :Leaf (:at 1619542668898) (:by |rJoDgvdeG) (:text |number-order)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.todolist)
            |v $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |n $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540830028210) (:by |root) (:text |respo.core)
                    |j $ %{} :Leaf (:at 1508915101761) (:by |root) (:text |:refer)
                    |r $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |span)
                        |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |input)
                        |w $ %{} :Leaf (:at 1505215173770) (:by |root) (:text |<>)
                        |yT $ %{} :Leaf (:at 1509035192092) (:by |root) (:text |list->)
                        |yv $ %{} :Leaf (:at 1571574481109) (:by |rJoDgvdeG) (:text |defeffect)
                        |yx $ %{} :Leaf (:at 1584719016462) (:by |rJoDgvdeG) (:text |>>)
                        |z $ %{} :Leaf (:at 1678121673532) (:by |rJoDgvdeG) (:text |a)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610031288087) (:by |rJoDgvdeG) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.task)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-task)
                |y $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-inspect)
                |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.zero)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-zero)
                |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.wrap)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-wrap)
                |yv $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1511713157059) (:by |rJoDgvdeG) (:text |respo.util.dom)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1511713175666) (:by |rJoDgvdeG) (:text |text-width)
                |yx $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.style.widget)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |widget)
                |yz $ %{} :Expr (:at 1659197814632) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1659197817060) (:by |rJoDgvdeG) (:text |memof.once)
                    |b $ %{} :Leaf (:at 1659197817714) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1659197817963) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1659197820934) (:by |rJoDgvdeG) (:text |memof1-call-by)
                |z $ %{} :Expr (:at 1651251929266) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651251931078) (:by |rJoDgvdeG) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651251932029) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1651251932285) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651251933338) (:by |rJoDgvdeG) (:text |defstyle)
    |respo.app.comp.wrap $ %{} :FileEntry
      :defs $ {}
        |comp-wrap $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-wrap)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.wrap)
            |v $ %{} :Expr (:at 1505301328166) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1505301331033) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540830069322) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508915113987) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
    |respo.app.comp.zero $ %{} :FileEntry
      :defs $ {}
        |comp-zero $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-zero)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:inner-text)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.zero)
            |v $ %{} :Expr (:at 1505301334158) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1505301334988) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540830062992) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508915128682) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
    |respo.app.core $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610186359045) (:by |rJoDgvdeG) (:text |defatom)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*store)
              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                  |b $ %{} :Leaf (:at 1687721257037) (:by |rJoDgvdeG) (:text |?)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
              |v $ %{} :Expr (:at 1687721058033) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1687721058579) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Leaf (:at 1687721083886) (:by |rJoDgvdeG) (:text |dev?)
                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |L $ %{} :Leaf (:at 1687721089133) (:by |rJoDgvdeG) (:text |js/console.log)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                      |v $ %{} :Leaf (:at 1584720061550) (:by |rJoDgvdeG) (:text |op-data)
              |x $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |updater)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*store)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                              |x $ %{} :Expr (:at 1584871619734) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1647338017838) (:by |rJoDgvdeG) (:text |generate-id!)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |reset!)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*store)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
        |handle-ssr! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1529814786924) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1529814786924) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1529814786924) (:by |root) (:text |handle-ssr!)
              |r $ %{} :Expr (:at 1529814786924) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529814839976) (:by |root) (:text |mount-target)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529814684031) (:by |root) (:text |realize-ssr!)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*store)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dispatch!)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-target)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1611849029556) (:by |rJoDgvdeG) (:text |render!)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*store)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.core)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.comp.container)
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |r $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-container)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.core)
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |r $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |render!)
                        |j $ %{} :Leaf (:at 1612763768898) (:by |rJoDgvdeG) (:text |realize-ssr!)
                |t $ %{} :Expr (:at 1687721073298) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1687721077399) (:by |rJoDgvdeG) (:text |respo.schema)
                    |b $ %{} :Leaf (:at 1687721079629) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1687721080319) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1687721081230) (:by |rJoDgvdeG) (:text |dev?)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.schema)
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:as)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |schema)
                |x $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1571567296220) (:by |rJoDgvdeG) (:text |respo.app.updater)
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |r $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |updater)
    |respo.app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:tasks)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |[])
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |v $ %{} :Expr (:at 1584717665248) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1584717667420) (:by |rJoDgvdeG) (:text |:cursor)
                      |j $ %{} :Expr (:at 1584717667697) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584717667935) (:by |rJoDgvdeG) (:text |[])
        |task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:done?)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |false)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.schema)
    |respo.app.style.widget $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1706301512112) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |button)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:display)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:inline-block)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1571551542606) (:by |rJoDgvdeG) (:text "|\"0 6px 0 6px")
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||Avenir,Verdana)
                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:pointer)
                  |y $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:background-color)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |80)
                          |v $ %{} :Leaf (:at 1651178104512) (:by |rJoDgvdeG) (:text |70.9)
                  |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0)
                          |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |100)
                  |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:height)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |28)
                  |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:line-height)
                      |j $ %{} :Leaf (:at 1571551548528) (:by |rJoDgvdeG) (:text "|\"28px")
                  |z $ %{} :Expr (:at 1651176934838) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651178868410) (:by |rJoDgvdeG) (:text |:transition-duration)
                      |b $ %{} :Leaf (:at 1651178874308) (:by |rJoDgvdeG) (:text "|\"200ms")
        |style-button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651175842232) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1651175844155) (:by |rJoDgvdeG) (:text |defstyle)
              |b $ %{} :Leaf (:at 1691559915154) (:by |rJoDgvdeG) (:text |style-button)
              |h $ %{} :Expr (:at 1651175842232) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651175846889) (:by |rJoDgvdeG) (:text |{})
                  |b $ %{} :Expr (:at 1651175847197) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1706302880539) (:by |rJoDgvdeG) (:text |:&)
                      |b $ %{} :Leaf (:at 1651176705567) (:by |rJoDgvdeG) (:text |button)
                  |h $ %{} :Expr (:at 1651176771327) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1706302935063) (:by |rJoDgvdeG) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1651176781248) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651176781606) (:by |rJoDgvdeG) (:text |{})
                          |b $ %{} :Expr (:at 1651176781971) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651176784286) (:by |rJoDgvdeG) (:text |:transform)
                              |b $ %{} :Leaf (:at 1651176923597) (:by |rJoDgvdeG) (:text "|\"scale(1.04)")
        |style-input $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651181023030) (:by |rJoDgvdeG) (:text |defstyle)
              |j $ %{} :Leaf (:at 1651181020406) (:by |rJoDgvdeG) (:text |style-input)
              |r $ %{} :Expr (:at 1651181031002) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651181031867) (:by |rJoDgvdeG) (:text |{})
                  |T $ %{} :Expr (:at 1651181033641) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1693148268165) (:by |rJoDgvdeG) (:text "|\"&")
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||16px)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||24px)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||0px 8px")
                          |x $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:outline)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:none)
                          |y $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:min-width)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||300px)
                          |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:background-color)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |94)
                          |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:border)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:none)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.style.widget)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610031345886) (:by |rJoDgvdeG) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                |n $ %{} :Expr (:at 1651176727189) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651176727189) (:by |rJoDgvdeG) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651176727189) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1651176727189) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651176727189) (:by |rJoDgvdeG) (:text |defstyle)
    |respo.app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1687720871335) (:by |rJoDgvdeG) (:text |op)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-id)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |L $ %{} :Leaf (:at 1610291648197) (:by |rJoDgvdeG) (:text |;)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                  |v $ %{} :Leaf (:at 1687720880020) (:by |rJoDgvdeG) (:text |op)
              |x $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1687720876983) (:by |rJoDgvdeG) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1687720878415) (:by |rJoDgvdeG) (:text |op)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687720901158) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1687720912742) (:by |rJoDgvdeG) (:text |cursor)
                          |h $ %{} :Leaf (:at 1687720914840) (:by |rJoDgvdeG) (:text |s)
                      |r $ %{} :Expr (:at 1584871897159) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874759470) (:by |rJoDgvdeG) (:text |update-states)
                          |j $ %{} :Leaf (:at 1584871899631) (:by |rJoDgvdeG) (:text |store)
                          |r $ %{} :Leaf (:at 1687720932283) (:by |rJoDgvdeG) (:text |cursor)
                          |t $ %{} :Leaf (:at 1687720932556) (:by |rJoDgvdeG) (:text |s)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687720935933) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:add)
                          |b $ %{} :Leaf (:at 1687720953292) (:by |rJoDgvdeG) (:text |text)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |conj)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
                                  |v $ %{} :Expr (:at 1584719381815) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584719382396) (:by |rJoDgvdeG) (:text |{})
                                      |j $ %{} :Expr (:at 1584719382680) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1584719383870) (:by |rJoDgvdeG) (:text |:text)
                                          |j $ %{} :Leaf (:at 1687720955661) (:by |rJoDgvdeG) (:text |text)
                                      |r $ %{} :Expr (:at 1584719385270) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1584719385873) (:by |rJoDgvdeG) (:text |:id)
                                          |j $ %{} :Leaf (:at 1584719386694) (:by |rJoDgvdeG) (:text |op-id)
                                      |v $ %{} :Expr (:at 1584719387463) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1584719388784) (:by |rJoDgvdeG) (:text |:done?)
                                          |j $ %{} :Leaf (:at 1584719389569) (:by |rJoDgvdeG) (:text |false)
                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687720943562) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:remove)
                          |b $ %{} :Leaf (:at 1687720958492) (:by |rJoDgvdeG) (:text |task-id)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619541687670) (:by |rJoDgvdeG) (:text |->)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610212234442) (:by |rJoDgvdeG) (:text |filter)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                                  |r $ %{} :Leaf (:at 1687720960772) (:by |rJoDgvdeG) (:text |task-id)
                  |y $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687720962949) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:clear)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |[])
                  |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687720964578) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:update)
                          |b $ %{} :Leaf (:at 1687721463480) (:by |rJoDgvdeG) (:text |task-id)
                          |h $ %{} :Leaf (:at 1687721464949) (:by |rJoDgvdeG) (:text |text)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619541690678) (:by |rJoDgvdeG) (:text |->)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610212398778) (:by |rJoDgvdeG) (:text |map)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task-id)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |assoc)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:text)
                                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |text)
                                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                  |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687720975862) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:hit-first)
                          |b $ %{} :Leaf (:at 1687721532966) (:by |rJoDgvdeG) (:text |rd)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |->)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |update-in)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:tasks)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:text)
                                      |v $ %{} :Leaf (:at 1687721535010) (:by |rJoDgvdeG) (:text |rd)
                  |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1687720982674) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:toggle)
                          |b $ %{} :Leaf (:at 1687720984934) (:by |rJoDgvdeG) (:text |task-id)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |store)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:tasks)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619541692706) (:by |rJoDgvdeG) (:text |->)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610212400568) (:by |rJoDgvdeG) (:text |map)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task-id)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |update)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:done?)
                                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                  |z $ %{} :Expr (:at 1687720887517) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1687720887955) (:by |rJoDgvdeG) (:text |_)
                      |T $ %{} :Expr (:at 1687720886908) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1687720886908) (:by |rJoDgvdeG) (:text |do)
                          |b $ %{} :Expr (:at 1687720886908) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1687721552927) (:by |rJoDgvdeG) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1687720891556) (:by |rJoDgvdeG) (:text "|\"Unknown op:")
                              |h $ %{} :Leaf (:at 1687720890633) (:by |rJoDgvdeG) (:text |op)
                          |h $ %{} :Leaf (:at 1687720886908) (:by |rJoDgvdeG) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.app.updater)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1584871894046) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1584871894046) (:by |rJoDgvdeG) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1584871894046) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1584871894046) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1584874768040) (:by |rJoDgvdeG) (:text |update-states)
    |respo.comp.global-keydown $ %{} :FileEntry
      :defs $ {}
        |comp-global-keydown $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1656036144286) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1656036190230) (:by |rJoDgvdeG) (:text |defcomp)
              |b $ %{} :Leaf (:at 1656036144286) (:by |rJoDgvdeG) (:text |comp-global-keydown)
              |h $ %{} :Expr (:at 1656036187991) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1656036769137) (:by |rJoDgvdeG) (:text |options)
                  |T $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |on-event)
              |j $ %{} :Expr (:at 1656037173503) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1656037174246) (:by |rJoDgvdeG) (:text |;)
                  |b $ %{} :Leaf (:at 1656037175011) (:by |rJoDgvdeG) (:text "|\"dirty solution: proxy window keydown event to a `<span/>`, comes with some restrictions. however Respo does not allow effects to modify states.")
              |l $ %{} :Expr (:at 1656036187991) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |[])
                  |b $ %{} :Expr (:at 1656036187991) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |effect-listen-keyboard)
                      |b $ %{} :Leaf (:at 1656036788322) (:by |rJoDgvdeG) (:text |options)
                      |h $ %{} :Leaf (:at 1699983944829) (:by |rJoDgvdeG) (:text "|\"keydown")
                  |h $ %{} :Expr (:at 1656036187991) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |span)
                      |b $ %{} :Expr (:at 1656036187991) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |{})
                          |b $ %{} :Expr (:at 1656036187991) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |:on-keydown)
                              |b $ %{} :Expr (:at 1656036187991) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |fn)
                                  |b $ %{} :Expr (:at 1656036187991) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |e)
                                      |b $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |d!)
                                  |h $ %{} :Expr (:at 1656036187991) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |on-event)
                                      |b $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |e)
                                      |h $ %{} :Leaf (:at 1656036187991) (:by |rJoDgvdeG) (:text |d!)
        |comp-global-keyup $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |defcomp)
              |b $ %{} :Leaf (:at 1699983905994) (:by |rJoDgvdeG) (:text |comp-global-keyup)
              |h $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |options)
                  |b $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |on-event)
              |l $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |;)
                  |b $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text "|\"dirty solution: proxy window keydown event to a `<span/>`, comes with some restrictions. however Respo does not allow effects to modify states.")
              |o $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |[])
                  |b $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |effect-listen-keyboard)
                      |b $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |options)
                      |h $ %{} :Leaf (:at 1699983922323) (:by |rJoDgvdeG) (:text "|\"keyup")
                  |h $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |span)
                      |b $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |{})
                          |b $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1699983908715) (:by |rJoDgvdeG) (:text |:on-keyup)
                              |b $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |fn)
                                  |b $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |e)
                                      |b $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |d!)
                                  |h $ %{} :Expr (:at 1699983902849) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |on-event)
                                      |b $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |e)
                                      |h $ %{} :Leaf (:at 1699983902849) (:by |rJoDgvdeG) (:text |d!)
        |dirty-field $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1656036533964) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1656036533964) (:by |rJoDgvdeG) (:text |def)
              |b $ %{} :Leaf (:at 1656036533964) (:by |rJoDgvdeG) (:text |dirty-field)
              |h $ %{} :Leaf (:at 1656036535385) (:by |rJoDgvdeG) (:text "|\"_global_listener")
        |effect-listen-keyboard $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1656036153685) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1656036169300) (:by |rJoDgvdeG) (:text |defeffect)
              |b $ %{} :Leaf (:at 1656036153685) (:by |rJoDgvdeG) (:text |effect-listen-keyboard)
              |e $ %{} :Expr (:at 1656036666042) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1656036793640) (:by |rJoDgvdeG) (:text |options)
                  |b $ %{} :Leaf (:at 1699983929063) (:by |rJoDgvdeG) (:text |event-name)
              |h $ %{} :Expr (:at 1656036165980) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1656036165980) (:by |rJoDgvdeG) (:text |action)
                  |b $ %{} :Leaf (:at 1656036165980) (:by |rJoDgvdeG) (:text |el)
                  |h $ %{} :Leaf (:at 1656036165980) (:by |rJoDgvdeG) (:text |at?)
              |l $ %{} :Expr (:at 1656036165980) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1656036429538) (:by |rJoDgvdeG) (:text |cond)
                  |l $ %{} :Expr (:at 1656036165980) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1656036615748) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1656036616461) (:by |rJoDgvdeG) (:text |or)
                          |T $ %{} :Expr (:at 1656036432168) (:by |rJoDgvdeG)
                            :data $ {}
                              |5 $ %{} :Leaf (:at 1656036434323) (:by |rJoDgvdeG) (:text |=)
                              |D $ %{} :Leaf (:at 1656036432799) (:by |rJoDgvdeG) (:text |action)
                              |T $ %{} :Leaf (:at 1656036165980) (:by |rJoDgvdeG) (:text |:mount)
                          |b $ %{} :Expr (:at 1656036432168) (:by |rJoDgvdeG)
                            :data $ {}
                              |5 $ %{} :Leaf (:at 1656036434323) (:by |rJoDgvdeG) (:text |=)
                              |D $ %{} :Leaf (:at 1656036432799) (:by |rJoDgvdeG) (:text |action)
                              |T $ %{} :Leaf (:at 1656036620963) (:by |rJoDgvdeG) (:text |:update)
                      |b $ %{} :Expr (:at 1656036342924) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1656036343643) (:by |rJoDgvdeG) (:text |let)
                          |T $ %{} :Expr (:at 1656036344914) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Expr (:at 1656036795263) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036797307) (:by |rJoDgvdeG) (:text |disabled-commands)
                                  |b $ %{} :Expr (:at 1656036997514) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1656036999249) (:by |rJoDgvdeG) (:text |noted)
                                      |L $ %{} :Leaf (:at 1656037181165) (:by |rJoDgvdeG) (:text "|\"copied event does not support `event.preventDefault()`, so we need to pass a set of configs")
                                      |T $ %{} :Expr (:at 1656036813445) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1656036814442) (:by |rJoDgvdeG) (:text |either)
                                          |T $ %{} :Expr (:at 1656036798068) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1656036798478) (:by |rJoDgvdeG) (:text |:disabled-commands)
                                              |b $ %{} :Leaf (:at 1656036800392) (:by |rJoDgvdeG) (:text |options)
                                          |b $ %{} :Expr (:at 1656036816582) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1656036819522) (:by |rJoDgvdeG) (:text |#{})
                                              |b $ %{} :Leaf (:at 1656036820240) (:by |rJoDgvdeG) (:text "|\"p")
                                              |h $ %{} :Leaf (:at 1656036820815) (:by |rJoDgvdeG) (:text "|\"s")
                              |T $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |handler)
                                  |b $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |fn)
                                      |b $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |event)
                                      |h $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |if)
                                          |b $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |and)
                                              |b $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1656036847673) (:by |rJoDgvdeG) (:text |.includes?)
                                                  |X $ %{} :Leaf (:at 1656036831886) (:by |rJoDgvdeG) (:text |disabled-commands)
                                                  |Z $ %{} :Expr (:at 1656036835569) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1656036835569) (:by |rJoDgvdeG) (:text |.-key)
                                                      |b $ %{} :Leaf (:at 1656036835569) (:by |rJoDgvdeG) (:text |event)
                                              |h $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |or)
                                                  |b $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |.-ctrlKey)
                                                      |b $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |event)
                                                  |h $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |.-metaKey)
                                                      |b $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |event)
                                          |h $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |.!preventDefault)
                                              |b $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |event)
                                      |l $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |.!dispatchEvent)
                                          |b $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |el)
                                          |h $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |new)
                                              |b $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |js/KeyboardEvent)
                                              |h $ %{} :Expr (:at 1656036336104) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |.-type)
                                                  |b $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |event)
                                              |l $ %{} :Leaf (:at 1656036336104) (:by |rJoDgvdeG) (:text |event)
                          |V $ %{} :Expr (:at 1656036929853) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1656036932294) (:by |rJoDgvdeG) (:text |if-let)
                              |b $ %{} :Expr (:at 1656036932819) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036938571) (:by |rJoDgvdeG) (:text |prev-listener)
                                  |b $ %{} :Expr (:at 1656036943649) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1656036943649) (:by |rJoDgvdeG) (:text |aget)
                                      |b $ %{} :Leaf (:at 1656036943649) (:by |rJoDgvdeG) (:text |el)
                                      |h $ %{} :Leaf (:at 1656036943649) (:by |rJoDgvdeG) (:text |dirty-field)
                              |h $ %{} :Expr (:at 1656036949028) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036949028) (:by |rJoDgvdeG) (:text |js/window.removeEventListener)
                                  |b $ %{} :Leaf (:at 1699983847872) (:by |rJoDgvdeG) (:text |event-name)
                                  |h $ %{} :Leaf (:at 1656036950215) (:by |rJoDgvdeG) (:text |prev-listener)
                          |X $ %{} :Expr (:at 1656036352218) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1656036507411) (:by |rJoDgvdeG) (:text |aset)
                              |e $ %{} :Leaf (:at 1656036352218) (:by |rJoDgvdeG) (:text |el)
                              |f $ %{} :Leaf (:at 1656036533537) (:by |rJoDgvdeG) (:text |dirty-field)
                              |h $ %{} :Leaf (:at 1656036352218) (:by |rJoDgvdeG) (:text |handler)
                          |b $ %{} :Expr (:at 1656036348120) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1656036348120) (:by |rJoDgvdeG) (:text |js/window.addEventListener)
                              |b $ %{} :Leaf (:at 1699983846697) (:by |rJoDgvdeG) (:text |event-name)
                              |h $ %{} :Leaf (:at 1656036348120) (:by |rJoDgvdeG) (:text |handler)
                  |o $ %{} :Expr (:at 1656036165980) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1656036441586) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1656036442167) (:by |rJoDgvdeG) (:text |=)
                          |L $ %{} :Leaf (:at 1656036444687) (:by |rJoDgvdeG) (:text |action)
                          |T $ %{} :Leaf (:at 1656036165980) (:by |rJoDgvdeG) (:text |:unmount)
                      |b $ %{} :Expr (:at 1656036361484) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1656036362651) (:by |rJoDgvdeG) (:text |let)
                          |L $ %{} :Expr (:at 1656036365733) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1656036363482) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1656036363482) (:by |rJoDgvdeG) (:text |handler)
                                  |b $ %{} :Expr (:at 1656036368361) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1656036540239) (:by |rJoDgvdeG) (:text |aget)
                                      |b $ %{} :Leaf (:at 1656036368361) (:by |rJoDgvdeG) (:text |el)
                                      |h $ %{} :Leaf (:at 1656036542716) (:by |rJoDgvdeG) (:text |dirty-field)
                          |T $ %{} :Expr (:at 1656036165980) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1656036165980) (:by |rJoDgvdeG) (:text |js/window.removeEventListener)
                              |b $ %{} :Leaf (:at 1699983857391) (:by |rJoDgvdeG) (:text |event-name)
                              |h $ %{} :Leaf (:at 1656036165980) (:by |rJoDgvdeG) (:text |handler)
                          |b $ %{} :Expr (:at 1656036372076) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710341578919) (:by |rJoDgvdeG) (:text |js-delete)
                              |b $ %{} :Leaf (:at 1656036372076) (:by |rJoDgvdeG) (:text |el)
                              |e $ %{} :Leaf (:at 1656036551265) (:by |rJoDgvdeG) (:text |dirty-field)
                  |q $ %{} :Expr (:at 1656036445644) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1656036446965) (:by |rJoDgvdeG) (:text |true)
                      |b $ %{} :Leaf (:at 1656036447507) (:by |rJoDgvdeG) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1656036112806) (:by |rJoDgvdeG)
          :data $ {}
            |T $ %{} :Leaf (:at 1656036112806) (:by |rJoDgvdeG) (:text |ns)
            |b $ %{} :Leaf (:at 1656036112806) (:by |rJoDgvdeG) (:text |respo.comp.global-keydown)
            |h $ %{} :Expr (:at 1656036197488) (:by |rJoDgvdeG)
              :data $ {}
                |T $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |:require)
                |h $ %{} :Expr (:at 1656036197488) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |respo.core)
                    |b $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1656036197488) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |defcomp)
                        |b $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |defeffect)
                        |h $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |<>)
                        |l $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |>>)
                        |o $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |div)
                        |q $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |button)
                        |s $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |textarea)
                        |t $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |span)
                        |u $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |input)
                        |v $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |a)
                        |w $ %{} :Leaf (:at 1656036197488) (:by |rJoDgvdeG) (:text |list->)
    |respo.comp.inspect $ %{} :FileEntry
      :defs $ {}
        |comp-inspect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-inspect)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tip)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style)
              |v $ %{} :Expr (:at 1659197385202) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1659197385983) (:by |rJoDgvdeG) (:text |let)
                  |L $ %{} :Expr (:at 1659197386245) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1659197386427) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1659197387803) (:by |rJoDgvdeG) (:text |class-name)
                          |b $ %{} :Expr (:at 1659197388146) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659197388367) (:by |rJoDgvdeG) (:text |if)
                              |b $ %{} :Expr (:at 1659197389150) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659197390460) (:by |rJoDgvdeG) (:text |string?)
                                  |b $ %{} :Leaf (:at 1659197391346) (:by |rJoDgvdeG) (:text |style)
                              |h $ %{} :Leaf (:at 1659197397636) (:by |rJoDgvdeG) (:text |style)
                      |b $ %{} :Expr (:at 1659197399331) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1659197679658) (:by |rJoDgvdeG) (:text |style-map)
                          |b $ %{} :Expr (:at 1659197408141) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659197408431) (:by |rJoDgvdeG) (:text |if)
                              |b $ %{} :Expr (:at 1659197408675) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659197409664) (:by |rJoDgvdeG) (:text |map?)
                                  |b $ %{} :Leaf (:at 1659197410907) (:by |rJoDgvdeG) (:text |style)
                              |h $ %{} :Leaf (:at 1659197414237) (:by |rJoDgvdeG) (:text |style)
                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |pre)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1651181166473) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651181168795) (:by |rJoDgvdeG) (:text |:class-name)
                              |b $ %{} :Expr (:at 1659197419616) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1659197421757) (:by |rJoDgvdeG) (:text |str-spaced)
                                  |T $ %{} :Leaf (:at 1651181170635) (:by |rJoDgvdeG) (:text |style-data)
                                  |b $ %{} :Leaf (:at 1659197424919) (:by |rJoDgvdeG) (:text |class-name)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:inner-text)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tip)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||: ")
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |grab-info)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1659197684792) (:by |rJoDgvdeG) (:text |style-map)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1513786986945) (:by |root) (:text |:on-click)
                              |r $ %{} :Expr (:at 1622395982771) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1622395982771) (:by |rJoDgvdeG) (:text |fn)
                                  |j $ %{} :Expr (:at 1622395982771) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1622395982771) (:by |rJoDgvdeG) (:text |e)
                                      |j $ %{} :Leaf (:at 1643707630229) (:by |rJoDgvdeG) (:text |d!)
                                  |n $ %{} :Expr (:at 1622396112738) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1622396113350) (:by |rJoDgvdeG) (:text |if)
                                      |L $ %{} :Expr (:at 1622396113796) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1622396115474) (:by |rJoDgvdeG) (:text |some?)
                                          |j $ %{} :Leaf (:at 1622396181569) (:by |rJoDgvdeG) (:text |js/window.devtoolsFormatters)
                                      |T $ %{} :Expr (:at 1622395995583) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1622395997818) (:by |rJoDgvdeG) (:text |js/console.log)
                                          |j $ %{} :Leaf (:at 1622395999353) (:by |rJoDgvdeG) (:text |data)
                                      |j $ %{} :Expr (:at 1622396147402) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1622396150828) (:by |rJoDgvdeG) (:text |js/console.log)
                                          |j $ %{} :Expr (:at 1622396151173) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1622396153856) (:by |rJoDgvdeG) (:text |to-js-data)
                                              |j $ %{} :Leaf (:at 1622396156023) (:by |rJoDgvdeG) (:text |data)
        |grab-info $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |grab-info)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |cond)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |map?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||Map/)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |count)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610189676965) (:by |rJoDgvdeG) (:text |list?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1610189679756) (:by |rJoDgvdeG) (:text ||List/)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |count)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |set?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||Set/)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |count)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||nil)
                  |y $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |number?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                  |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1685259487242) (:by |rJoDgvdeG) (:text |tag?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                  |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612761794050) (:by |rJoDgvdeG) (:text |bool?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                  |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||Fn)
                  |yv $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610203140138) (:by |rJoDgvdeG) (:text |true)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1693242532389) (:by |rJoDgvdeG) (:text |to-lispy-string)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |data)
        |highlight-defcomp $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1706301769888) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1706301789060) (:by |rJoDgvdeG) (:text |defstyle)
              |b $ %{} :Leaf (:at 1706301786786) (:by |rJoDgvdeG) (:text |highlight-defcomp)
              |h $ %{} :Expr (:at 1706301769888) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1706301791329) (:by |rJoDgvdeG) (:text |{})
                  |b $ %{} :Expr (:at 1706301792900) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1706302219647) (:by |rJoDgvdeG) (:text "|\"& *")
                      |b $ %{} :Expr (:at 1706301794409) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1706301794686) (:by |rJoDgvdeG) (:text |{})
                          |b $ %{} :Expr (:at 1706301818575) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1706301819453) (:by |rJoDgvdeG) (:text |:outline)
                              |b $ %{} :Expr (:at 1706301823514) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1706301824044) (:by |rJoDgvdeG) (:text |str)
                                  |b $ %{} :Leaf (:at 1706301969753) (:by |rJoDgvdeG) (:text "|\"1px dashed ")
                                  |h $ %{} :Expr (:at 1706301829467) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1706301829467) (:by |rJoDgvdeG) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1706301954826) (:by |rJoDgvdeG) (:text |200)
                                      |h $ %{} :Leaf (:at 1706301957657) (:by |rJoDgvdeG) (:text |40)
                                      |l $ %{} :Leaf (:at 1706301962999) (:by |rJoDgvdeG) (:text |50)
                                      |o $ %{} :Leaf (:at 1706301829467) (:by |rJoDgvdeG) (:text |0.5)
        |style-data $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1651181143824) (:by |rJoDgvdeG) (:text |defstyle)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-data)
              |r $ %{} :Expr (:at 1651181145242) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651181146289) (:by |rJoDgvdeG) (:text |{})
                  |T $ %{} :Expr (:at 1651181147896) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1705596715907) (:by |rJoDgvdeG) (:text "|\"&")
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:position)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:absolute)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:background-color)
                              |b $ %{} :Leaf (:at 1539015843887) (:by |root) (:text "|\"hsl(240,100%,0%)")
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:color)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:white)
                          |x $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:opacity)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0.2)
                          |y $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||12px)
                          |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:font-family)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||Avenir,Verdana)
                          |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1613290464569) (:by |rJoDgvdeG) (:text "|\"1.4em")
                          |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||2px 6px")
                          |yv $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:border-radius)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||4px)
                          |yx $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:max-width)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |160)
                          |yy $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:max-height)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |32)
                          |yyT $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:white-space)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:normal)
                          |yyj $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1706300889549) (:by |rJoDgvdeG) (:text |:text-overflow)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:ellipsis)
                          |yyr $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:default)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.comp.inspect)
            |v $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |f $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540830055277) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508915140751) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |pre)
                        |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |<>)
                |k $ %{} :Expr (:at 1651181153297) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1651181154597) (:by |rJoDgvdeG) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1651181155371) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1651181155774) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651181158090) (:by |rJoDgvdeG) (:text |defstyle)
                |n $ %{} :Expr (:at 1706301908865) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1706301914117) (:by |rJoDgvdeG) (:text |respo.util.format)
                    |b $ %{} :Leaf (:at 1706301915346) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1706301915608) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1706301916052) (:by |rJoDgvdeG) (:text |hsl)
    |respo.comp.space $ %{} :FileEntry
      :defs $ {}
        |=< $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1509729563664) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=<)
              |n $ %{} :Expr (:at 1509729564574) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1509729564809) (:by |root) (:text |w)
                  |j $ %{} :Leaf (:at 1509729565457) (:by |root) (:text |x)
              |r $ %{} :Expr (:at 1509729566572) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-space)
                  |j $ %{} :Leaf (:at 1509729567667) (:by |root) (:text |w)
                  |r $ %{} :Leaf (:at 1509729568077) (:by |root) (:text |x)
        |comp-space $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-space)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |w)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |h)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1706301072597) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1706301076097) (:by |rJoDgvdeG) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1706301114367) (:by |rJoDgvdeG) (:text |style-space)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |some?)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |w)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1706301124935) (:by |rJoDgvdeG) (:text |&{})
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:width)
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |w)
                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1706301118487) (:by |rJoDgvdeG) (:text |&{})
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:height)
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |h)
        |style-space $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1706301080819) (:by |rJoDgvdeG) (:text |defstyle)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-space)
              |r $ %{} :Expr (:at 1706301081542) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1706301082069) (:by |rJoDgvdeG) (:text |{})
                  |T $ %{} :Expr (:at 1706301082671) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1706303012511) (:by |rJoDgvdeG) (:text |:&)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:height)
                              |j $ %{} :Leaf (:at 1505230211192) (:by |root) (:text |1)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:width)
                              |j $ %{} :Leaf (:at 1505326468454) (:by |root) (:text |1)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:display)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:inline-block)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.comp.space)
            |v $ %{} :Expr (:at 1505301338392) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1505301339203) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540830048701) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508915151159) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defcomp)
                |n $ %{} :Expr (:at 1706301129823) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1706301132116) (:by |rJoDgvdeG) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1706301132949) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1706301133182) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1706301134235) (:by |rJoDgvdeG) (:text |defstyle)
    |respo.controller.client $ %{} :FileEntry
      :defs $ {}
        |activate-instance! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |activate-instance!)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entire-dom)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-point)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |build-listener)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
                  |t $ %{} :Expr (:at 1610190639372) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1643707892607) (:by |rJoDgvdeG) (:text |set!)
                      |j $ %{} :Expr (:at 1643707893321) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1643707896705) (:by |rJoDgvdeG) (:text |.-innerHTML)
                          |T $ %{} :Leaf (:at 1610190643914) (:by |rJoDgvdeG) (:text |mount-point)
                      |v $ %{} :Leaf (:at 1610190647462) (:by |rJoDgvdeG) (:text ||)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1622298984165) (:by |rJoDgvdeG) (:text |.!appendChild)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-point)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |make-element)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entire-dom)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                          |v $ %{} :Expr (:at 1612022135008) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612022135488) (:by |rJoDgvdeG) (:text |[])
        |build-listener $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |build-listener)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |simple-event)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event->edn)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                          |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |simple-event)
        |patch-instance! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |patch-instance!)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |changes)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-point)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |build-listener)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1611848949159) (:by |rJoDgvdeG) (:text |apply-dom-changes)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |changes)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-point)
                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.controller.client)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.render.patch)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |apply-dom-changes)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event->edn)
                |x $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.render.dom)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |make-element)
    |respo.controller.resolve $ %{} :FileEntry
      :defs $ {}
        |build-deliver-event $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |build-deliver-event)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*global-element)
                  |j $ %{} :Leaf (:at 1615647049712) (:by |rJoDgvdeG) (:text |*dispatch-fn)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |simple-event)
                  |n $ %{} :Expr (:at 1610210012734) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1610211269724) (:by |rJoDgvdeG) (:text |;)
                      |T $ %{} :Leaf (:at 1610210013686) (:by |rJoDgvdeG) (:text |echo)
                      |j $ %{} :Leaf (:at 1610210017420) (:by |rJoDgvdeG) (:text "|\"event coord")
                      |r $ %{} :Leaf (:at 1610210020674) (:by |rJoDgvdeG) (:text |coord)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target-element)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-event-target)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*global-element)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target-listener)
                              |j $ %{} :Expr (:at 1610210611737) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1610210612515) (:by |rJoDgvdeG) (:text |if)
                                  |L $ %{} :Expr (:at 1610210613093) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610210616433) (:by |rJoDgvdeG) (:text |some?)
                                      |j $ %{} :Leaf (:at 1610210618073) (:by |rJoDgvdeG) (:text |target-element)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |get)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:event)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target-element)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                                  |j $ %{} :Expr (:at 1610210628430) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1610210629941) (:by |rJoDgvdeG) (:text |do)
                                      |T $ %{} :Expr (:at 1610210619661) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610210634787) (:by |rJoDgvdeG) (:text |js/console.warn)
                                          |j $ %{} :Leaf (:at 1610210627788) (:by |rJoDgvdeG) (:text "|\"found no element")
                                          |r $ %{} :Leaf (:at 1610210640521) (:by |rJoDgvdeG) (:text |coord)
                                          |v $ %{} :Leaf (:at 1610210648248) (:by |rJoDgvdeG) (:text |event-name)
                                      |j $ %{} :Leaf (:at 1610210635732) (:by |rJoDgvdeG) (:text |nil)
                          |x $ %{} :Expr (:at 1584871534908) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584871546817) (:by |rJoDgvdeG) (:text |dispatch-wrap)
                              |j $ %{} :Expr (:at 1584871547656) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584871547971) (:by |rJoDgvdeG) (:text |fn)
                                  |j $ %{} :Expr (:at 1584871548221) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584871548803) (:by |rJoDgvdeG) (:text |op)
                                      |b $ %{} :Leaf (:at 1687720809380) (:by |rJoDgvdeG) (:text |?)
                                      |j $ %{} :Leaf (:at 1584871557596) (:by |rJoDgvdeG) (:text |data)
                                  |r $ %{} :Expr (:at 1615647055348) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1615647056049) (:by |rJoDgvdeG) (:text |let)
                                      |L $ %{} :Expr (:at 1615647056462) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1615647056611) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1615647058228) (:by |rJoDgvdeG) (:text |dispatch!)
                                              |j $ %{} :Expr (:at 1615647064531) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1615647066184) (:by |rJoDgvdeG) (:text |deref)
                                                  |T $ %{} :Leaf (:at 1615647062613) (:by |rJoDgvdeG) (:text |*dispatch-fn)
                                      |T $ %{} :Expr (:at 1584872185338) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1647336068192) (:by |rJoDgvdeG) (:text |if)
                                          |T $ %{} :Expr (:at 1584871560410) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610209623492) (:by |rJoDgvdeG) (:text |list?)
                                              |j $ %{} :Leaf (:at 1584871563045) (:by |rJoDgvdeG) (:text |op)
                                          |b $ %{} :Expr (:at 1584871563843) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584871566681) (:by |rJoDgvdeG) (:text |dispatch!)
                                              |j $ %{} :Expr (:at 1687720811957) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1687720814226) (:by |rJoDgvdeG) (:text |:)
                                                  |T $ %{} :Leaf (:at 1687720815687) (:by |rJoDgvdeG) (:text |states)
                                                  |b $ %{} :Leaf (:at 1687720816973) (:by |rJoDgvdeG) (:text |op)
                                                  |h $ %{} :Leaf (:at 1687720822201) (:by |rJoDgvdeG) (:text |data)
                                          |j $ %{} :Expr (:at 1687721203509) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1687721204262) (:by |rJoDgvdeG) (:text |if)
                                              |L $ %{} :Expr (:at 1687721218894) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1687721224111) (:by |rJoDgvdeG) (:text |tag?)
                                                  |b $ %{} :Leaf (:at 1687721224563) (:by |rJoDgvdeG) (:text |op)
                                              |P $ %{} :Expr (:at 1687721228548) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1687721231242) (:by |rJoDgvdeG) (:text |dispatch!)
                                                  |b $ %{} :Expr (:at 1687721235253) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1687721235720) (:by |rJoDgvdeG) (:text |::)
                                                      |b $ %{} :Leaf (:at 1687721238904) (:by |rJoDgvdeG) (:text |op)
                                                      |h $ %{} :Leaf (:at 1687721241048) (:by |rJoDgvdeG) (:text |data)
                                              |T $ %{} :Expr (:at 1584872192690) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584872192690) (:by |rJoDgvdeG) (:text |dispatch!)
                                                  |j $ %{} :Leaf (:at 1584872192690) (:by |rJoDgvdeG) (:text |op)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |some?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target-listener)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||listener found:")
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target-listener)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |simple-event)
                                  |r $ %{} :Leaf (:at 1584871591793) (:by |rJoDgvdeG) (:text |dispatch-wrap)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||found no listener:")
                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                              |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
        |find-event-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-event-target)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
              |t $ %{} :Expr (:at 1610211034290) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1610211252801) (:by |rJoDgvdeG) (:text |;)
                  |T $ %{} :Leaf (:at 1610211048992) (:by |rJoDgvdeG) (:text |echo)
                  |j $ %{} :Leaf (:at 1610211054037) (:by |rJoDgvdeG) (:text "|\"looking for")
                  |v $ %{} :Leaf (:at 1610211139463) (:by |rJoDgvdeG) (:text |coord)
                  |x $ %{} :Leaf (:at 1610211141818) (:by |rJoDgvdeG) (:text |event-name)
              |tT $ %{} :Expr (:at 1612345336766) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612345382067) (:by |rJoDgvdeG) (:text |assert)
                  |b $ %{} :Leaf (:at 1612345387113) (:by |rJoDgvdeG) (:text "|\"element cannot be nil")
                  |j $ %{} :Expr (:at 1612345340922) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612345389618) (:by |rJoDgvdeG) (:text |some?)
                      |j $ %{} :Leaf (:at 1612345346403) (:by |rJoDgvdeG) (:text |element)
              |u $ %{} :Expr (:at 1612012811290) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612345370113) (:by |rJoDgvdeG) (:text |assert)
                  |b $ %{} :Leaf (:at 1612345374570) (:by |rJoDgvdeG) (:text "|\"coord cannot be nil")
                  |j $ %{} :Expr (:at 1612012812288) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612345377089) (:by |rJoDgvdeG) (:text |some?)
                      |j $ %{} :Leaf (:at 1612012814882) (:by |rJoDgvdeG) (:text |coord)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target-element)
                          |j $ %{} :Expr (:at 1615658647125) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1615658647886) (:by |rJoDgvdeG) (:text |let)
                              |T $ %{} :Expr (:at 1615658648500) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1615658648675) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1615658649281) (:by |rJoDgvdeG) (:text |m)
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |get-markup-at)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                              |j $ %{} :Expr (:at 1622467282466) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1622467288043) (:by |rJoDgvdeG) (:text |apply-args)
                                  |L $ %{} :Expr (:at 1622467294852) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1622467296784) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1622467296784) (:by |rJoDgvdeG) (:text |get-markup-at)
                                          |j $ %{} :Leaf (:at 1622467296784) (:by |rJoDgvdeG) (:text |element)
                                          |r $ %{} :Leaf (:at 1622467296784) (:by |rJoDgvdeG) (:text |coord)
                                  |P $ %{} :Expr (:at 1622467298461) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1622467298935) (:by |rJoDgvdeG) (:text |fn)
                                      |j $ %{} :Expr (:at 1622467299164) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1622467299588) (:by |rJoDgvdeG) (:text |m)
                                      |r $ %{} :Expr (:at 1622467301067) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1622467301915) (:by |rJoDgvdeG) (:text |if)
                                          |j $ %{} :Expr (:at 1622467302180) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1622467303651) (:by |rJoDgvdeG) (:text |component?)
                                              |j $ %{} :Leaf (:at 1622467304372) (:by |rJoDgvdeG) (:text |m)
                                          |r $ %{} :Expr (:at 1622467307305) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1622467308032) (:by |rJoDgvdeG) (:text |recur)
                                              |j $ %{} :Expr (:at 1622467310433) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1622467312526) (:by |rJoDgvdeG) (:text |:tree)
                                                  |j $ %{} :Leaf (:at 1622467312819) (:by |rJoDgvdeG) (:text |m)
                                          |v $ %{} :Leaf (:at 1622467315330) (:by |rJoDgvdeG) (:text |m)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element-exists?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |some?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target-element)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||target element:")
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |to-lispy-string)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element-exists?)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1541907295253) (:by |root) (:text |some?)
                              |j $ %{} :Expr (:at 1541907082099) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1541907293020) (:by |root) (:text |get)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:event)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target-element)
                                  |j $ %{} :Leaf (:at 1541907087091) (:by |root) (:text |event-name)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target-element)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612012794436) (:by |rJoDgvdeG) (:text |empty?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element-exists?)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610209648997) (:by |rJoDgvdeG) (:text |slice)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0)
                                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |-)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |count)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |1)
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
        |get-markup-at $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |get-markup-at)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |markup)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||markup:)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |to-lispy-string)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
              |y $ %{} :Expr (:at 1691040045606) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1691040047198) (:by |rJoDgvdeG) (:text |list-match)
                  |b $ %{} :Leaf (:at 1691040048815) (:by |rJoDgvdeG) (:text |coord)
                  |h $ %{} :Expr (:at 1691040049256) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1691040049499) (:by |rJoDgvdeG)
                        :data $ {}
                      |b $ %{} :Leaf (:at 1691040052192) (:by |rJoDgvdeG) (:text |markup)
                  |l $ %{} :Expr (:at 1691040053453) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1691040053864) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1691040080216) (:by |rJoDgvdeG) (:text |coord-head)
                          |b $ %{} :Leaf (:at 1691040060145) (:by |rJoDgvdeG) (:text |cs)
                      |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |if)
                          |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |component?)
                              |b $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |markup)
                          |h $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |recur)
                              |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |:tree)
                                  |b $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |markup)
                              |h $ %{} :Leaf (:at 1691040074492) (:by |rJoDgvdeG) (:text |cs)
                          |l $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |let)
                              |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                :data $ {}
                                  |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |child-pair)
                                      |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |find)
                                          |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |:children)
                                              |b $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |markup)
                                          |h $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |fn)
                                              |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |child-entry)
                                              |h $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |=)
                                                  |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |get)
                                                      |b $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |child-entry)
                                                      |h $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |0)
                                                  |h $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |coord-head)
                              |h $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |if)
                                  |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |some?)
                                      |b $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |child-pair)
                                  |h $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |get-markup-at)
                                      |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |get)
                                          |b $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |child-pair)
                                          |h $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |1)
                                      |h $ %{} :Leaf (:at 1691040076545) (:by |rJoDgvdeG) (:text |cs)
                                  |l $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |raise)
                                      |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |str)
                                          |b $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text "||child not found:")
                                          |h $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |coord)
                                          |l $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |map)
                                              |b $ %{} :Expr (:at 1691040064085) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |:children)
                                                  |b $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |markup)
                                              |h $ %{} :Leaf (:at 1691040064085) (:by |rJoDgvdeG) (:text |first)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.controller.resolve)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.detect)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element?)
    |respo.core $ %{} :FileEntry
      :defs $ {}
        |*changes-logger $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610186320613) (:by |rJoDgvdeG) (:text |defatom)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*changes-logger)
              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
        |*dispatch-fn $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615647006945) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1615647020524) (:by |rJoDgvdeG) (:text |defatom)
              |j $ %{} :Leaf (:at 1615647006945) (:by |rJoDgvdeG) (:text |*dispatch-fn)
              |r $ %{} :Leaf (:at 1615647011835) (:by |rJoDgvdeG) (:text |nil)
        |*global-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610186303395) (:by |rJoDgvdeG) (:text |defatom)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*global-element)
              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
        |<> $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610031443177) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610031443177) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610031443177) (:by |rJoDgvdeG) (:text |<>)
              |r $ %{} :Expr (:at 1610031443177) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031463966) (:by |rJoDgvdeG) (:text |content)
                  |b $ %{} :Leaf (:at 1613831925958) (:by |rJoDgvdeG) (:text |?)
                  |j $ %{} :Leaf (:at 1651251863052) (:by |rJoDgvdeG) (:text |style)
              |v $ %{} :Expr (:at 1651251851678) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651251854039) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1651251854240) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651251855249) (:by |rJoDgvdeG) (:text |string?)
                      |b $ %{} :Leaf (:at 1651251858263) (:by |rJoDgvdeG) (:text |style)
                  |T $ %{} :Expr (:at 1610031491741) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610031493089) (:by |rJoDgvdeG) (:text |span)
                      |j $ %{} :Expr (:at 1610031495828) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610031496210) (:by |rJoDgvdeG) (:text |{})
                          |b $ %{} :Expr (:at 1610031501269) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610031503170) (:by |rJoDgvdeG) (:text |:inner-text)
                              |j $ %{} :Leaf (:at 1610031505382) (:by |rJoDgvdeG) (:text |content)
                          |j $ %{} :Expr (:at 1610031497055) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651251873334) (:by |rJoDgvdeG) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1610031500305) (:by |rJoDgvdeG) (:text |style)
                  |b $ %{} :Expr (:at 1610031491741) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610031493089) (:by |rJoDgvdeG) (:text |span)
                      |j $ %{} :Expr (:at 1610031495828) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610031496210) (:by |rJoDgvdeG) (:text |{})
                          |b $ %{} :Expr (:at 1610031501269) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610031503170) (:by |rJoDgvdeG) (:text |:inner-text)
                              |j $ %{} :Leaf (:at 1610031505382) (:by |rJoDgvdeG) (:text |content)
                          |j $ %{} :Expr (:at 1610031497055) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610031499540) (:by |rJoDgvdeG) (:text |:style)
                              |j $ %{} :Leaf (:at 1610031500305) (:by |rJoDgvdeG) (:text |style)
        |>> $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1584717583807) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1584717583807) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1584717583807) (:by |rJoDgvdeG) (:text |>>)
              |r $ %{} :Expr (:at 1584717583807) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1584717587429) (:by |rJoDgvdeG) (:text |states)
                  |j $ %{} :Leaf (:at 1584717589003) (:by |rJoDgvdeG) (:text |k)
              |v $ %{} :Expr (:at 1584717590808) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1584717593513) (:by |rJoDgvdeG) (:text |let)
                  |j $ %{} :Expr (:at 1584717593734) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1584717593912) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584717602856) (:by |rJoDgvdeG) (:text |parent-cursor)
                          |j $ %{} :Expr (:at 1584717633898) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610188885898) (:by |rJoDgvdeG) (:text |either)
                              |T $ %{} :Expr (:at 1584717603162) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584717604395) (:by |rJoDgvdeG) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1584717605146) (:by |rJoDgvdeG) (:text |states)
                              |j $ %{} :Expr (:at 1584717635438) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584717635678) (:by |rJoDgvdeG) (:text |[])
                      |j $ %{} :Expr (:at 1584717607005) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584717615395) (:by |rJoDgvdeG) (:text |branch)
                          |j $ %{} :Expr (:at 1610188881386) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610188882419) (:by |rJoDgvdeG) (:text |either)
                              |T $ %{} :Expr (:at 1584717616411) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584717618041) (:by |rJoDgvdeG) (:text |get)
                                  |j $ %{} :Leaf (:at 1584717618973) (:by |rJoDgvdeG) (:text |states)
                                  |r $ %{} :Leaf (:at 1584717619385) (:by |rJoDgvdeG) (:text |k)
                              |j $ %{} :Expr (:at 1610188883119) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610188883500) (:by |rJoDgvdeG) (:text |{})
                  |r $ %{} :Expr (:at 1584717620560) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1584717622795) (:by |rJoDgvdeG) (:text |assoc)
                      |j $ %{} :Leaf (:at 1584717623675) (:by |rJoDgvdeG) (:text |branch)
                      |r $ %{} :Leaf (:at 1584717625744) (:by |rJoDgvdeG) (:text |:cursor)
                      |v $ %{} :Expr (:at 1584717626141) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584717626655) (:by |rJoDgvdeG) (:text |conj)
                          |j $ %{} :Leaf (:at 1584717630765) (:by |rJoDgvdeG) (:text |parent-cursor)
                          |r $ %{} :Leaf (:at 1584717631832) (:by |rJoDgvdeG) (:text |k)
        |a $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610440495617) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610440495617) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610440497856) (:by |rJoDgvdeG) (:text |a)
              |r $ %{} :Expr (:at 1610440495617) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610440495617) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610440495617) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610440495617) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610440495617) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610440495617) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610440499250) (:by |rJoDgvdeG) (:text |:a)
                  |r $ %{} :Leaf (:at 1610440495617) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610440495617) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977910203) (:by |rJoDgvdeG) (:text |children)
        |blockquote $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610733247330) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610733247330) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610733250062) (:by |rJoDgvdeG) (:text |blockquote)
              |r $ %{} :Expr (:at 1610733247330) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610733247330) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610733247330) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610733247330) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610733247330) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610733247330) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610733254490) (:by |rJoDgvdeG) (:text |:blockquote)
                  |r $ %{} :Leaf (:at 1610733247330) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610733247330) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977871879) (:by |rJoDgvdeG) (:text |children)
        |body $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610286181345) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610286181345) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610286183331) (:by |rJoDgvdeG) (:text |body)
              |r $ %{} :Expr (:at 1610286181345) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286181345) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610286181345) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610286181345) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610286181345) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286181345) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610286186257) (:by |rJoDgvdeG) (:text |:body)
                  |r $ %{} :Leaf (:at 1610286181345) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610286181345) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977938604) (:by |rJoDgvdeG) (:text |children)
        |button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610031620278) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610031620278) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610031622574) (:by |rJoDgvdeG) (:text |button)
              |r $ %{} :Expr (:at 1610031620278) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031620278) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610031620278) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610031620278) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610031620278) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031620278) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610031624803) (:by |rJoDgvdeG) (:text |:button)
                  |r $ %{} :Leaf (:at 1610031620278) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610031620278) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Expr (:at 1619539690966) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619539690966) (:by |rJoDgvdeG) (:text |map)
                      |j $ %{} :Leaf (:at 1619539690966) (:by |rJoDgvdeG) (:text |children)
                      |r $ %{} :Leaf (:at 1619539690966) (:by |rJoDgvdeG) (:text |confirm-child)
        |clear-cache! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |clear-cache!)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
              |y $ %{} :Expr (:at 1650634141757) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1650634142422) (:by |rJoDgvdeG) (:text |reset-memof1-caches!)
        |code $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610732316196) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610732316196) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610732317924) (:by |rJoDgvdeG) (:text |code)
              |r $ %{} :Expr (:at 1610732316196) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732316196) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610732316196) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610732316196) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610732316196) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732316196) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610732320119) (:by |rJoDgvdeG) (:text |:code)
                  |r $ %{} :Leaf (:at 1610732316196) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610732316196) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977948633) (:by |rJoDgvdeG) (:text |children)
        |confirm-child $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1571849837293) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1571849837293) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1571849837293) (:by |rJoDgvdeG) (:text |confirm-child)
              |r $ %{} :Expr (:at 1571849837293) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571849977778) (:by |rJoDgvdeG) (:text |x)
              |t $ %{} :Expr (:at 1571849854178) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1645976797860) (:by |rJoDgvdeG) (:text |assert)
                  |b $ %{} :Leaf (:at 1645976800143) (:by |rJoDgvdeG) (:text "|\"Invalid data in elements tree: ")
                  |j $ %{} :Expr (:at 1571850633926) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1571850635465) (:by |rJoDgvdeG) (:text |or)
                      |H $ %{} :Expr (:at 1571850818280) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571850818280) (:by |rJoDgvdeG) (:text |nil?)
                          |j $ %{} :Leaf (:at 1571850818280) (:by |rJoDgvdeG) (:text |x)
                      |L $ %{} :Expr (:at 1571850636152) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571850638498) (:by |rJoDgvdeG) (:text |element?)
                          |j $ %{} :Leaf (:at 1571850639292) (:by |rJoDgvdeG) (:text |x)
                      |T $ %{} :Expr (:at 1571850629618) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1571850633520) (:by |rJoDgvdeG) (:text |component?)
                          |T $ %{} :Leaf (:at 1571849978626) (:by |rJoDgvdeG) (:text |x)
              |v $ %{} :Leaf (:at 1571849980101) (:by |rJoDgvdeG) (:text |x)
        |confirm-child-pair $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1645977375671) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1645977381267) (:by |rJoDgvdeG) (:text |defn)
              |b $ %{} :Leaf (:at 1645977375671) (:by |rJoDgvdeG) (:text |confirm-child-pair)
              |h $ %{} :Expr (:at 1645977378443) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1645977386034) (:by |rJoDgvdeG) (:text |pair)
              |k $ %{} :Expr (:at 1645977590556) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1645977591764) (:by |rJoDgvdeG) (:text |assert)
                  |b $ %{} :Leaf (:at 1645977600093) (:by |rJoDgvdeG) (:text "|\"expected pair")
                  |h $ %{} :Expr (:at 1645977605889) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1645977606383) (:by |rJoDgvdeG) (:text |and)
                      |b $ %{} :Expr (:at 1645977607663) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1645977608525) (:by |rJoDgvdeG) (:text |list?)
                          |b $ %{} :Leaf (:at 1645977610168) (:by |rJoDgvdeG) (:text |pair)
                      |h $ %{} :Expr (:at 1645977610661) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1645977612576) (:by |rJoDgvdeG) (:text |&=)
                          |b $ %{} :Leaf (:at 1645977613087) (:by |rJoDgvdeG) (:text |2)
                          |h $ %{} :Expr (:at 1645977613455) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645977614131) (:by |rJoDgvdeG) (:text |count)
                              |b $ %{} :Leaf (:at 1645977614618) (:by |rJoDgvdeG) (:text |pair)
              |o $ %{} :Expr (:at 1645977392073) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1645977620270) (:by |rJoDgvdeG) (:text |&let)
                  |L $ %{} :Expr (:at 1645977397285) (:by |rJoDgvdeG)
                    :data $ {}
                      |b $ %{} :Leaf (:at 1645977401879) (:by |rJoDgvdeG) (:text |x)
                      |h $ %{} :Expr (:at 1645977623363) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1645977628187) (:by |rJoDgvdeG) (:text |nth)
                          |b $ %{} :Leaf (:at 1645977628788) (:by |rJoDgvdeG) (:text |pair)
                          |h $ %{} :Leaf (:at 1645977629082) (:by |rJoDgvdeG) (:text |1)
                  |T $ %{} :Expr (:at 1645977378443) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1645977378443) (:by |rJoDgvdeG) (:text |assert)
                      |b $ %{} :Leaf (:at 1645977378443) (:by |rJoDgvdeG) (:text "|\"Invalid data in elements tree: ")
                      |h $ %{} :Expr (:at 1645977378443) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1645977378443) (:by |rJoDgvdeG) (:text |or)
                          |b $ %{} :Expr (:at 1645977378443) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645977378443) (:by |rJoDgvdeG) (:text |nil?)
                              |b $ %{} :Leaf (:at 1645977378443) (:by |rJoDgvdeG) (:text |x)
                          |h $ %{} :Expr (:at 1645977378443) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645977378443) (:by |rJoDgvdeG) (:text |element?)
                              |b $ %{} :Leaf (:at 1645977378443) (:by |rJoDgvdeG) (:text |x)
                          |l $ %{} :Expr (:at 1645977378443) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645977378443) (:by |rJoDgvdeG) (:text |component?)
                              |b $ %{} :Leaf (:at 1645977378443) (:by |rJoDgvdeG) (:text |x)
              |q $ %{} :Leaf (:at 1645977636347) (:by |rJoDgvdeG) (:text |pair)
        |create-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |create-element)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tag-name)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |&)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |children)
              |t $ %{} :Expr (:at 1611379929360) (:by |rJoDgvdeG)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1611379975598) (:by |rJoDgvdeG) (:text |;)
                  |D $ %{} :Leaf (:at 1611379931157) (:by |rJoDgvdeG) (:text |assert)
                  |L $ %{} :Expr (:at 1611379933883) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1611379933883) (:by |rJoDgvdeG) (:text |str)
                      |j $ %{} :Leaf (:at 1611379933883) (:by |rJoDgvdeG) (:text "||For rendering lists, please use list-> , got: ")
                      |r $ %{} :Expr (:at 1611379933883) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1611379933883) (:by |rJoDgvdeG) (:text |to-lispy-string)
                          |j $ %{} :Leaf (:at 1611379933883) (:by |rJoDgvdeG) (:text |children)
                  |T $ %{} :Expr (:at 1610187405339) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1610187406024) (:by |rJoDgvdeG) (:text |and)
                      |L $ %{} :Expr (:at 1610187406288) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1725124457567) (:by |rJoDgvdeG) (:text |&>)
                          |b $ %{} :Expr (:at 1610187408824) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610187409608) (:by |rJoDgvdeG) (:text |count)
                              |j $ %{} :Leaf (:at 1610187411264) (:by |rJoDgvdeG) (:text |children)
                          |j $ %{} :Leaf (:at 1610187407943) (:by |rJoDgvdeG) (:text |0)
                      |T $ %{} :Expr (:at 1511967482844) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1511967483827) (:by |root) (:text |not)
                          |T $ %{} :Expr (:at 1511967298757) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610187335022) (:by |rJoDgvdeG) (:text |any?)
                              |j $ %{} :Leaf (:at 1610187360587) (:by |rJoDgvdeG) (:text |list?)
                              |r $ %{} :Leaf (:at 1511967305138) (:by |root) (:text |children)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |pick-attrs)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |styles)
                          |j $ %{} :Expr (:at 1619539923158) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1619539924081) (:by |rJoDgvdeG) (:text |->)
                              |F $ %{} :Expr (:at 1619539932087) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619539932087) (:by |rJoDgvdeG) (:text |either)
                                  |j $ %{} :Expr (:at 1619539932087) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1725124451503) (:by |rJoDgvdeG) (:text |&map:get)
                                      |j $ %{} :Leaf (:at 1619539932087) (:by |rJoDgvdeG) (:text |props)
                                      |n $ %{} :Leaf (:at 1725124452976) (:by |rJoDgvdeG) (:text |:style)
                                  |r $ %{} :Expr (:at 1619539932087) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1619539932087) (:by |rJoDgvdeG) (:text |{})
                              |L $ %{} :Expr (:at 1725124595099) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1725124416565) (:by |rJoDgvdeG) (:text |&map:to-list)
                              |T $ %{} :Expr (:at 1610193060106) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610193060106) (:by |rJoDgvdeG) (:text |sort)
                                  |j $ %{} :Expr (:at 1610193060106) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610193060106) (:by |rJoDgvdeG) (:text |fn)
                                      |j $ %{} :Expr (:at 1610193060106) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610193060106) (:by |rJoDgvdeG) (:text |x)
                                          |j $ %{} :Leaf (:at 1610193060106) (:by |rJoDgvdeG) (:text |y)
                                      |r $ %{} :Expr (:at 1610193060106) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1647337449541) (:by |rJoDgvdeG) (:text |&compare)
                                          |j $ %{} :Expr (:at 1610193060106) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1725124424967) (:by |rJoDgvdeG) (:text |nth)
                                              |j $ %{} :Leaf (:at 1610193060106) (:by |rJoDgvdeG) (:text |x)
                                              |n $ %{} :Leaf (:at 1725124425738) (:by |rJoDgvdeG) (:text |0)
                                          |r $ %{} :Expr (:at 1610193060106) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1725124427718) (:by |rJoDgvdeG) (:text |nth)
                                              |j $ %{} :Leaf (:at 1610193060106) (:by |rJoDgvdeG) (:text |y)
                                              |n $ %{} :Leaf (:at 1725124428414) (:by |rJoDgvdeG) (:text |0)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                          |r $ %{} :Expr (:at 1513782729323) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1513782731925) (:by |root) (:text |pick-event)
                              |j $ %{} :Leaf (:at 1513782735356) (:by |root) (:text |props)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610188595663) (:by |rJoDgvdeG) (:text |children-nodes)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1619539943720) (:by |rJoDgvdeG) (:text |->)
                              |V $ %{} :Leaf (:at 1619540174327) (:by |rJoDgvdeG) (:text |children)
                              |X $ %{} :Expr (:at 1619540165920) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619540165920) (:by |rJoDgvdeG) (:text |map-indexed)
                                  |j $ %{} :Expr (:at 1619540165920) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1619540165920) (:by |rJoDgvdeG) (:text |fn)
                                      |j $ %{} :Expr (:at 1619540165920) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1619540165920) (:by |rJoDgvdeG) (:text |idx)
                                          |j $ %{} :Leaf (:at 1619540165920) (:by |rJoDgvdeG) (:text |item)
                                      |n $ %{} :Expr (:at 1645977770101) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1645977776683) (:by |rJoDgvdeG) (:text |confirm-child)
                                          |b $ %{} :Leaf (:at 1645977778172) (:by |rJoDgvdeG) (:text |item)
                                      |r $ %{} :Expr (:at 1619540165920) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1619540165920) (:by |rJoDgvdeG) (:text |[])
                                          |j $ %{} :Leaf (:at 1619540165920) (:by |rJoDgvdeG) (:text |idx)
                                          |r $ %{} :Leaf (:at 1619540165920) (:by |rJoDgvdeG) (:text |item)
                              |b $ %{} :Expr (:at 1619539950440) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619539950440) (:by |rJoDgvdeG) (:text |filter)
                                  |j $ %{} :Leaf (:at 1619539950440) (:by |rJoDgvdeG) (:text |val-exists?)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615282517750) (:by |rJoDgvdeG) (:text |%{})
                      |b $ %{} :Leaf (:at 1615282521386) (:by |rJoDgvdeG) (:text |schema/Element)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:name)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tag-name)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:coord)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:attrs)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                      |x $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |styles)
                      |y $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:event)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                      |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:children)
                          |j $ %{} :Leaf (:at 1610188598016) (:by |rJoDgvdeG) (:text |children-nodes)
        |create-list-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1509034723018) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1509034723018) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1509034723018) (:by |root) (:text |create-list-element)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tag-name)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props)
                  |v $ %{} :Leaf (:at 1509073531039) (:by |root) (:text |child-map)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |pick-attrs)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |styles)
                          |j $ %{} :Expr (:at 1619540232105) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1619540233043) (:by |rJoDgvdeG) (:text |->)
                              |E $ %{} :Leaf (:at 1619540290152) (:by |rJoDgvdeG) (:text |props)
                              |ET $ %{} :Expr (:at 1619540294488) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619540294972) (:by |rJoDgvdeG) (:text |:style)
                              |F $ %{} :Expr (:at 1619540286780) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619540286780) (:by |rJoDgvdeG) (:text |either)
                                  |r $ %{} :Expr (:at 1619540286780) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1619540286780) (:by |rJoDgvdeG) (:text |{})
                              |H $ %{} :Expr (:at 1619540283177) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1623693634596) (:by |rJoDgvdeG) (:text |.to-list)
                              |T $ %{} :Expr (:at 1610193202421) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610193202421) (:by |rJoDgvdeG) (:text |sort)
                                  |j $ %{} :Expr (:at 1610193202421) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610193202421) (:by |rJoDgvdeG) (:text |fn)
                                      |j $ %{} :Expr (:at 1610193202421) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610193202421) (:by |rJoDgvdeG) (:text |x)
                                          |j $ %{} :Leaf (:at 1610193202421) (:by |rJoDgvdeG) (:text |y)
                                      |r $ %{} :Expr (:at 1610193202421) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1647337486450) (:by |rJoDgvdeG) (:text |&compare)
                                          |j $ %{} :Expr (:at 1610193202421) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610193202421) (:by |rJoDgvdeG) (:text |first)
                                              |j $ %{} :Leaf (:at 1610193202421) (:by |rJoDgvdeG) (:text |x)
                                          |r $ %{} :Expr (:at 1610193202421) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610193202421) (:by |rJoDgvdeG) (:text |first)
                                              |j $ %{} :Leaf (:at 1610193202421) (:by |rJoDgvdeG) (:text |y)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                          |j $ %{} :Expr (:at 1513782729323) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1513782731925) (:by |root) (:text |pick-event)
                              |j $ %{} :Leaf (:at 1513782735356) (:by |root) (:text |props)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615282543127) (:by |rJoDgvdeG) (:text |%{})
                      |b $ %{} :Leaf (:at 1615282546336) (:by |rJoDgvdeG) (:text |schema/Element)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:name)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tag-name)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:coord)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:attrs)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                      |x $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |styles)
                      |y $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:event)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                      |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:children)
                          |j $ %{} :Expr (:at 1645977174439) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645977174439) (:by |rJoDgvdeG) (:text |map)
                              |b $ %{} :Leaf (:at 1645977177860) (:by |rJoDgvdeG) (:text |child-map)
                              |h $ %{} :Leaf (:at 1645977369915) (:by |rJoDgvdeG) (:text |confirm-child-pair)
        |decorate-defcomp $ %{} :CodeEntry (:doc "|detect root element under component and add `data-defcomp` mark")
          :code $ %{} :Expr (:at 1711382115224) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1711382115224) (:by |rJoDgvdeG) (:text |defn)
              |b $ %{} :Leaf (:at 1711382115224) (:by |rJoDgvdeG) (:text |decorate-defcomp)
              |h $ %{} :Expr (:at 1711382115224) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1711382119346) (:by |rJoDgvdeG) (:text |c)
                  |b $ %{} :Leaf (:at 1711382201482) (:by |rJoDgvdeG) (:text |name)
              |l $ %{} :Expr (:at 1711382294189) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1711382295516) (:by |rJoDgvdeG) (:text |update)
                  |L $ %{} :Leaf (:at 1711382296549) (:by |rJoDgvdeG) (:text |c)
                  |P $ %{} :Leaf (:at 1711382298946) (:by |rJoDgvdeG) (:text |:tree)
                  |T $ %{} :Expr (:at 1711382299980) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1711382300511) (:by |rJoDgvdeG) (:text |fn)
                      |L $ %{} :Expr (:at 1711382300755) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711382301738) (:by |rJoDgvdeG) (:text |tree)
                      |T $ %{} :Expr (:at 1711382120136) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711382120596) (:by |rJoDgvdeG) (:text |if)
                          |b $ %{} :Expr (:at 1711382121356) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711382125018) (:by |rJoDgvdeG) (:text |&record:matches?)
                              |b $ %{} :Leaf (:at 1711382304381) (:by |rJoDgvdeG) (:text |tree)
                              |h $ %{} :Leaf (:at 1711382147184) (:by |rJoDgvdeG) (:text |schema/Element)
                          |h $ %{} :Expr (:at 1711382168608) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711382312068) (:by |rJoDgvdeG) (:text |update)
                              |X $ %{} :Leaf (:at 1711382306092) (:by |rJoDgvdeG) (:text |tree)
                              |b $ %{} :Leaf (:at 1711382168608) (:by |rJoDgvdeG) (:text |:attrs)
                              |h $ %{} :Expr (:at 1711382168608) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1711382168608) (:by |rJoDgvdeG) (:text |fn)
                                  |b $ %{} :Expr (:at 1711382168608) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1711382168608) (:by |rJoDgvdeG) (:text |attrs)
                                  |h $ %{} :Expr (:at 1711382168608) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1711382168608) (:by |rJoDgvdeG) (:text |conj)
                                      |b $ %{} :Leaf (:at 1711382168608) (:by |rJoDgvdeG) (:text |attrs)
                                      |h $ %{} :Expr (:at 1711382168608) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1711382168608) (:by |rJoDgvdeG) (:text |[])
                                          |b $ %{} :Leaf (:at 1711382168608) (:by |rJoDgvdeG) (:text |:data-comp)
                                          |h $ %{} :Leaf (:at 1711382198221) (:by |rJoDgvdeG) (:text |name)
                          |l $ %{} :Leaf (:at 1711382307466) (:by |rJoDgvdeG) (:text |tree)
        |defcomp $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |defmacro)
              |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |defcomp)
              |r $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |comp-name)
                  |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |params)
                  |r $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |&)
                  |v $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |body)
              |v $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |assert)
                  |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text "|\"expected symbol of comp-name")
                  |r $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |symbol?)
                      |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |comp-name)
              |x $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |assert)
                  |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text "|\"expected list for params")
                  |r $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |list?)
                      |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |params)
              |y $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |assert)
                  |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text "|\"some component retured")
                  |r $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |&>)
                      |j $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |count)
                          |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |body)
                      |r $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |0)
              |yT $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1623693443366) (:by |rJoDgvdeG) (:text |quasiquote)
                  |j $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |defn)
                      |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |~comp-name)
                      |r $ %{} :Expr (:at 1612711003106) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |~)
                          |j $ %{} :Leaf (:at 1612711003106) (:by |rJoDgvdeG) (:text |params)
                      |t $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |decorate-defcomp)
                          |b $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |extract-effects-list)
                              |b $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |%{})
                                  |b $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |schema/Component)
                                  |h $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |:effects)
                                      |b $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |[])
                                  |l $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |:name)
                                      |b $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |~)
                                          |b $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |turn-tag)
                                              |b $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |comp-name)
                                  |o $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |:tree)
                                      |b $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |do)
                                          |b $ %{} :Expr (:at 1711382162729) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |~@)
                                              |b $ %{} :Leaf (:at 1711382162729) (:by |rJoDgvdeG) (:text |body)
                          |h $ %{} :Expr (:at 1711382204817) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1711382204817) (:by |rJoDgvdeG) (:text |~)
                              |b $ %{} :Expr (:at 1711382204817) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1711382204817) (:by |rJoDgvdeG) (:text |turn-string)
                                  |b $ %{} :Leaf (:at 1711382204817) (:by |rJoDgvdeG) (:text |comp-name)
        |defeffect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610030655710) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610030665066) (:by |rJoDgvdeG) (:text |defmacro)
              |j $ %{} :Leaf (:at 1610030655710) (:by |rJoDgvdeG) (:text |defeffect)
              |r $ %{} :Expr (:at 1610030655710) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610030672480) (:by |rJoDgvdeG) (:text |effect-name)
                  |j $ %{} :Leaf (:at 1610030676121) (:by |rJoDgvdeG) (:text |args)
                  |r $ %{} :Leaf (:at 1610030677021) (:by |rJoDgvdeG) (:text |params)
                  |v $ %{} :Leaf (:at 1610030677873) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1610030679274) (:by |rJoDgvdeG) (:text |body)
              |v $ %{} :Expr (:at 1610030679953) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610030699717) (:by |rJoDgvdeG) (:text |assert)
                  |b $ %{} :Leaf (:at 1610030730759) (:by |rJoDgvdeG) (:text "|\"args in symbol")
                  |j $ %{} :Expr (:at 1610030700237) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610030702055) (:by |rJoDgvdeG) (:text |and)
                      |j $ %{} :Expr (:at 1610030702488) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610030703398) (:by |rJoDgvdeG) (:text |list?)
                          |j $ %{} :Leaf (:at 1610030705352) (:by |rJoDgvdeG) (:text |args)
                      |r $ %{} :Expr (:at 1610030705885) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610030707297) (:by |rJoDgvdeG) (:text |every?)
                          |b $ %{} :Leaf (:at 1619537870721) (:by |rJoDgvdeG) (:text |args)
                          |j $ %{} :Leaf (:at 1610030709464) (:by |rJoDgvdeG) (:text |symbol?)
              |x $ %{} :Expr (:at 1610030679953) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610030699717) (:by |rJoDgvdeG) (:text |assert)
                  |b $ %{} :Leaf (:at 1610030744038) (:by |rJoDgvdeG) (:text "|\"params like [action el at-place?]")
                  |j $ %{} :Expr (:at 1610030700237) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610030702055) (:by |rJoDgvdeG) (:text |and)
                      |j $ %{} :Expr (:at 1610030702488) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610030703398) (:by |rJoDgvdeG) (:text |list?)
                          |j $ %{} :Leaf (:at 1610030718840) (:by |rJoDgvdeG) (:text |params)
                      |r $ %{} :Expr (:at 1610030705885) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610030707297) (:by |rJoDgvdeG) (:text |every?)
                          |b $ %{} :Leaf (:at 1619537867098) (:by |rJoDgvdeG) (:text |params)
                          |j $ %{} :Leaf (:at 1610030709464) (:by |rJoDgvdeG) (:text |symbol?)
              |y $ %{} :Expr (:at 1612711297848) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1612711298674) (:by |rJoDgvdeG) (:text |let)
                  |L $ %{} :Expr (:at 1612711299315) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1612711299820) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612711303774) (:by |rJoDgvdeG) (:text |args-var)
                          |j $ %{} :Expr (:at 1612711304478) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612711464984) (:by |rJoDgvdeG) (:text |gensym)
                              |j $ %{} :Leaf (:at 1612711307302) (:by |rJoDgvdeG) (:text "|\"args")
                      |j $ %{} :Expr (:at 1612711299820) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612711312011) (:by |rJoDgvdeG) (:text |params-var)
                          |j $ %{} :Expr (:at 1612711304478) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612711466996) (:by |rJoDgvdeG) (:text |gensym)
                              |j $ %{} :Leaf (:at 1612711314039) (:by |rJoDgvdeG) (:text "|\"params")
                  |T $ %{} :Expr (:at 1610030745111) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1623693450692) (:by |rJoDgvdeG) (:text |quasiquote)
                      |j $ %{} :Expr (:at 1610030752742) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610030757397) (:by |rJoDgvdeG) (:text |defn)
                          |j $ %{} :Leaf (:at 1610030762581) (:by |rJoDgvdeG) (:text |~effect-name)
                          |r $ %{} :Leaf (:at 1610030767540) (:by |rJoDgvdeG) (:text |~args)
                          |v $ %{} :Expr (:at 1610030816533) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615300144193) (:by |rJoDgvdeG) (:text |%{})
                              |b $ %{} :Leaf (:at 1615300149120) (:by |rJoDgvdeG) (:text |schema/Effect)
                              |j $ %{} :Expr (:at 1610030816533) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610030816533) (:by |rJoDgvdeG) (:text |:name)
                                  |j $ %{} :Expr (:at 1610030825039) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610030826237) (:by |rJoDgvdeG) (:text |~)
                                      |j $ %{} :Expr (:at 1610030826696) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1685259457682) (:by |rJoDgvdeG) (:text |turn-tag)
                                          |j $ %{} :Leaf (:at 1610030833481) (:by |rJoDgvdeG) (:text |effect-name)
                              |v $ %{} :Expr (:at 1610030816533) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610030816533) (:by |rJoDgvdeG) (:text |:coord)
                                  |j $ %{} :Expr (:at 1610030816533) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610030816533) (:by |rJoDgvdeG) (:text |[])
                              |x $ %{} :Expr (:at 1610030816533) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610030816533) (:by |rJoDgvdeG) (:text |:args)
                                  |j $ %{} :Expr (:at 1610030816533) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610030816533) (:by |rJoDgvdeG) (:text |[])
                                      |j $ %{} :Leaf (:at 1610030848269) (:by |rJoDgvdeG) (:text |~@args)
                              |y $ %{} :Expr (:at 1610030816533) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610030816533) (:by |rJoDgvdeG) (:text |:method)
                                  |j $ %{} :Expr (:at 1610030816533) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610030816533) (:by |rJoDgvdeG) (:text |fn)
                                      |j $ %{} :Expr (:at 1610030816533) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612711320523) (:by |rJoDgvdeG) (:text |~args-var)
                                          |j $ %{} :Leaf (:at 1612711327228) (:by |rJoDgvdeG) (:text |~params-var)
                                      |r $ %{} :Expr (:at 1612345738935) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1612345742846) (:by |rJoDgvdeG) (:text |let[])
                                          |L $ %{} :Leaf (:at 1612711336939) (:by |rJoDgvdeG) (:text |~args)
                                          |P $ %{} :Leaf (:at 1612711329762) (:by |rJoDgvdeG) (:text |~args-var)
                                          |T $ %{} :Expr (:at 1612345748027) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1612345750516) (:by |rJoDgvdeG) (:text |let[])
                                              |L $ %{} :Leaf (:at 1612711341421) (:by |rJoDgvdeG) (:text |~params)
                                              |P $ %{} :Leaf (:at 1612711331885) (:by |rJoDgvdeG) (:text |~params-var)
                                              |T $ %{} :Expr (:at 1610030913582) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610030946156) (:by |rJoDgvdeG) (:text |~@)
                                                  |j $ %{} :Expr (:at 1610030930703) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610030930241) (:by |rJoDgvdeG) (:text |if)
                                                      |j $ %{} :Expr (:at 1610030932083) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610030932467) (:by |rJoDgvdeG) (:text |empty?)
                                                          |j $ %{} :Leaf (:at 1610030933840) (:by |rJoDgvdeG) (:text |body)
                                                      |r $ %{} :Expr (:at 1610030935487) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1623693577109) (:by |rJoDgvdeG) (:text |quasiquote)
                                                          |j $ %{} :Expr (:at 1610030953478) (:by |rJoDgvdeG)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1693148224272) (:by |rJoDgvdeG) (:text |println)
                                                              |j $ %{} :Leaf (:at 1610030971291) (:by |rJoDgvdeG) (:text "|\"WARNING:")
                                                              |r $ %{} :Leaf (:at 1610030975762) (:by |rJoDgvdeG) (:text |~effect-name)
                                                              |t $ %{} :Leaf (:at 1610031007777) (:by |rJoDgvdeG) (:text "|\"lack code for handling effects!")
                                                              |v $ %{} :Leaf (:at 1610030975891) (:by |rJoDgvdeG) (:text |)
                                                      |v $ %{} :Leaf (:at 1610030944279) (:by |rJoDgvdeG) (:text |body)
        |defplugin $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610031722067) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610031726411) (:by |rJoDgvdeG) (:text |defmacro)
              |j $ %{} :Leaf (:at 1610031722067) (:by |rJoDgvdeG) (:text |defplugin)
              |r $ %{} :Expr (:at 1610031722067) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031731498) (:by |rJoDgvdeG) (:text |x)
                  |j $ %{} :Leaf (:at 1610031732369) (:by |rJoDgvdeG) (:text |params)
                  |r $ %{} :Leaf (:at 1610031733089) (:by |rJoDgvdeG) (:text |&)
                  |v $ %{} :Leaf (:at 1610031733739) (:by |rJoDgvdeG) (:text |body)
              |v $ %{} :Expr (:at 1610031734337) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031766815) (:by |rJoDgvdeG) (:text |assert)
                  |j $ %{} :Leaf (:at 1610031762483) (:by |rJoDgvdeG) (:text "|\"expected symbol")
                  |r $ %{} :Expr (:at 1610031763354) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610031764751) (:by |rJoDgvdeG) (:text |symbol?)
                      |j $ %{} :Leaf (:at 1610031765111) (:by |rJoDgvdeG) (:text |x)
              |x $ %{} :Expr (:at 1610031767219) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031768231) (:by |rJoDgvdeG) (:text |assert)
                  |j $ %{} :Leaf (:at 1610031774319) (:by |rJoDgvdeG) (:text "|\"expected params")
                  |r $ %{} :Expr (:at 1610031775547) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610031776576) (:by |rJoDgvdeG) (:text |list?)
                      |j $ %{} :Leaf (:at 1610031777512) (:by |rJoDgvdeG) (:text |params)
              |y $ %{} :Expr (:at 1610031778518) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031779680) (:by |rJoDgvdeG) (:text |assert)
                  |j $ %{} :Leaf (:at 1610031787309) (:by |rJoDgvdeG) (:text "|\"expected some result")
                  |r $ %{} :Expr (:at 1610031789360) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610031791957) (:by |rJoDgvdeG) (:text |>)
                      |j $ %{} :Expr (:at 1610031792231) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610031794388) (:by |rJoDgvdeG) (:text |count)
                          |j $ %{} :Leaf (:at 1610031794922) (:by |rJoDgvdeG) (:text |body)
                      |r $ %{} :Leaf (:at 1610031795966) (:by |rJoDgvdeG) (:text |0)
              |yT $ %{} :Expr (:at 1610031797072) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1623693459981) (:by |rJoDgvdeG) (:text |quasiquote)
                  |j $ %{} :Expr (:at 1611826117097) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1611826117097) (:by |rJoDgvdeG) (:text |defn)
                      |j $ %{} :Leaf (:at 1611826117097) (:by |rJoDgvdeG) (:text |~x)
                      |r $ %{} :Leaf (:at 1611826117097) (:by |rJoDgvdeG) (:text |~params)
                      |v $ %{} :Leaf (:at 1611826117097) (:by |rJoDgvdeG) (:text |~@body)
        |div $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610030416057) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610030416057) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610030416057) (:by |rJoDgvdeG) (:text |div)
              |r $ %{} :Expr (:at 1610030416057) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610030517471) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610030518101) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610030519221) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610030520709) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610030525466) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610030528267) (:by |rJoDgvdeG) (:text |:div)
                  |r $ %{} :Leaf (:at 1610030544609) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610030548525) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1619539710770) (:by |rJoDgvdeG) (:text |children)
        |element-type $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1565455760753) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1565455770526) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1565455760753) (:by |rJoDgvdeG) (:text |element-type)
              |r $ %{} :Expr (:at 1565455760753) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1565455772000) (:by |rJoDgvdeG) (:text |if)
                  |j $ %{} :Expr (:at 1565455774250) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1565455776972) (:by |rJoDgvdeG) (:text |exists?)
                      |j $ %{} :Leaf (:at 1565455779009) (:by |rJoDgvdeG) (:text |js/Element)
                  |r $ %{} :Leaf (:at 1565455782729) (:by |rJoDgvdeG) (:text |js/Element)
                  |v $ %{} :Leaf (:at 1565455786739) (:by |rJoDgvdeG) (:text |js/Error)
        |extract-effects-list $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612012330271) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1612012331901) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1612012330271) (:by |rJoDgvdeG) (:text |extract-effects-list)
              |r $ %{} :Expr (:at 1612012330271) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612012648008) (:by |rJoDgvdeG) (:text |markup)
              |v $ %{} :Expr (:at 1612012631761) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1612012634157) (:by |rJoDgvdeG) (:text |&let)
                  |L $ %{} :Expr (:at 1612012634755) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612012641843) (:by |rJoDgvdeG) (:text |markup-tree)
                      |j $ %{} :Expr (:at 1612012643996) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612012644698) (:by |rJoDgvdeG) (:text |:tree)
                          |j $ %{} :Leaf (:at 1612012646057) (:by |rJoDgvdeG) (:text |markup)
                  |T $ %{} :Expr (:at 1615647720727) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1615647721566) (:by |rJoDgvdeG) (:text |cond)
                      |L $ %{} :Expr (:at 1615647730672) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Expr (:at 1615647732016) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615647732597) (:by |rJoDgvdeG) (:text |nil?)
                              |j $ %{} :Leaf (:at 1615647735110) (:by |rJoDgvdeG) (:text |markup-tree)
                          |j $ %{} :Expr (:at 1615647736114) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1615647736996) (:by |rJoDgvdeG) (:text |assoc)
                              |j $ %{} :Leaf (:at 1615647738087) (:by |rJoDgvdeG) (:text |markup)
                              |r $ %{} :Leaf (:at 1615647740189) (:by |rJoDgvdeG) (:text |:tree)
                              |v $ %{} :Expr (:at 1615647740867) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1615647742575) (:by |rJoDgvdeG) (:text |span)
                                  |j $ %{} :Leaf (:at 1615647757967) (:by |rJoDgvdeG) (:text |nil)
                      |T $ %{} :Expr (:at 1612012341713) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Expr (:at 1612012335062) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612012335062) (:by |rJoDgvdeG) (:text |list?)
                              |j $ %{} :Leaf (:at 1612012335062) (:by |rJoDgvdeG) (:text |markup-tree)
                          |j $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |let)
                              |j $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |node-tree)
                                      |j $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1647338652919) (:by |rJoDgvdeG) (:text |find)
                                          |b $ %{} :Leaf (:at 1647338656474) (:by |rJoDgvdeG) (:text |markup-tree)
                                          |j $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |fn)
                                              |j $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |x)
                                              |r $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |and)
                                                  |j $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1615282871888) (:by |rJoDgvdeG) (:text |record?)
                                                      |j $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |x)
                                                  |r $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |or)
                                                      |j $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |component?)
                                                          |j $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |x)
                                                      |r $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |element?)
                                                          |j $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |x)
                                  |j $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |effects-list)
                                      |j $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1619540516640) (:by |rJoDgvdeG) (:text |->)
                                          |j $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |markup-tree)
                                          |r $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |filter)
                                              |j $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |effect?)
                              |r $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1645976708714) (:by |rJoDgvdeG) (:text |->)
                                  |j $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |markup)
                                  |r $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1645976715019) (:by |rJoDgvdeG) (:text |assoc)
                                      |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |:tree)
                                      |j $ %{} :Leaf (:at 1612012372803) (:by |rJoDgvdeG) (:text |node-tree)
                                  |t $ %{} :Expr (:at 1612012346347) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1645976717446) (:by |rJoDgvdeG) (:text |assoc)
                                      |T $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |:effects)
                                      |j $ %{} :Leaf (:at 1612012346347) (:by |rJoDgvdeG) (:text |effects-list)
                      |j $ %{} :Expr (:at 1615647723453) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1615647725182) (:by |rJoDgvdeG) (:text |true)
                          |j $ %{} :Leaf (:at 1615647726049) (:by |rJoDgvdeG) (:text |markup)
        |h1 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610732324075) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610732324075) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610732325454) (:by |rJoDgvdeG) (:text |h1)
              |r $ %{} :Expr (:at 1610732324075) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732324075) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610732324075) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610732324075) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610732324075) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732324075) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610732327064) (:by |rJoDgvdeG) (:text |:h1)
                  |r $ %{} :Leaf (:at 1610732324075) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610732324075) (:by |rJoDgvdeG) (:text |&)
                  |w $ %{} :Leaf (:at 1645977845775) (:by |rJoDgvdeG) (:text |children)
        |h2 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610732331213) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610732331213) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610732332915) (:by |rJoDgvdeG) (:text |h2)
              |r $ %{} :Expr (:at 1610732331213) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732331213) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610732331213) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610732331213) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610732331213) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732331213) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610732334442) (:by |rJoDgvdeG) (:text |:h2)
                  |r $ %{} :Leaf (:at 1610732331213) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610732331213) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977852704) (:by |rJoDgvdeG) (:text |children)
        |h3 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610732339158) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610732339158) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610732340550) (:by |rJoDgvdeG) (:text |h3)
              |r $ %{} :Expr (:at 1610732339158) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732339158) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610732339158) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610732339158) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610732339158) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732339158) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610732342782) (:by |rJoDgvdeG) (:text |:h3)
                  |r $ %{} :Leaf (:at 1610732339158) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610732339158) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977857849) (:by |rJoDgvdeG) (:text |children)
        |h4 $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610732346076) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610732346076) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610732348010) (:by |rJoDgvdeG) (:text |h4)
              |r $ %{} :Expr (:at 1610732346076) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732346076) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610732346076) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610732346076) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610732346076) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610732346076) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610732350745) (:by |rJoDgvdeG) (:text |:h4)
                  |r $ %{} :Leaf (:at 1610732346076) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610732346076) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977863044) (:by |rJoDgvdeG) (:text |children)
        |head $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610286129088) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610286129088) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610286130788) (:by |rJoDgvdeG) (:text |head)
              |r $ %{} :Expr (:at 1610286129088) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286129088) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610286129088) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610286129088) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610286129088) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286129088) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610286132678) (:by |rJoDgvdeG) (:text |:head)
                  |r $ %{} :Leaf (:at 1610286129088) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610286129088) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977959024) (:by |rJoDgvdeG) (:text |children)
        |html $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610286114364) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610286114364) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610286116982) (:by |rJoDgvdeG) (:text |html)
              |r $ %{} :Expr (:at 1610286114364) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286114364) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610286114364) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610286114364) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610286114364) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286114364) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610286119221) (:by |rJoDgvdeG) (:text |:html)
                  |r $ %{} :Leaf (:at 1610286114364) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610286114364) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Expr (:at 1619539742823) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619539742823) (:by |rJoDgvdeG) (:text |map)
                      |j $ %{} :Leaf (:at 1619539742823) (:by |rJoDgvdeG) (:text |children)
                      |r $ %{} :Leaf (:at 1619539742823) (:by |rJoDgvdeG) (:text |confirm-child)
        |img $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610698198957) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610698198957) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610698200294) (:by |rJoDgvdeG) (:text |img)
              |r $ %{} :Expr (:at 1610698198957) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610698198957) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610698198957) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610698198957) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610698198957) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610698198957) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610698202382) (:by |rJoDgvdeG) (:text |:img)
                  |r $ %{} :Leaf (:at 1610698198957) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610698198957) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977930311) (:by |rJoDgvdeG) (:text |children)
        |input $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610031326810) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610031326810) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610031329024) (:by |rJoDgvdeG) (:text |input)
              |r $ %{} :Expr (:at 1610031326810) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031326810) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610031326810) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610031326810) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610031326810) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031326810) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610031331127) (:by |rJoDgvdeG) (:text |:input)
                  |r $ %{} :Leaf (:at 1610031326810) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610031326810) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1619539753868) (:by |rJoDgvdeG) (:text |children)
        |li $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610733266569) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610733266569) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610733267779) (:by |rJoDgvdeG) (:text |li)
              |r $ %{} :Expr (:at 1610733266569) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610733266569) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610733266569) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610733266569) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610733266569) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610733266569) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610733270252) (:by |rJoDgvdeG) (:text |:li)
                  |r $ %{} :Leaf (:at 1610733266569) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610733266569) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977888940) (:by |rJoDgvdeG) (:text |children)
        |link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610286166301) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610286166301) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610286168183) (:by |rJoDgvdeG) (:text |link)
              |r $ %{} :Expr (:at 1610286166301) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286166301) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610286166301) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610286166301) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610286166301) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286166301) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610286170612) (:by |rJoDgvdeG) (:text |:link)
                  |r $ %{} :Leaf (:at 1610286166301) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610286166301) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977964415) (:by |rJoDgvdeG) (:text |children)
        |list-> $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610031532007) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610031532007) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610031532007) (:by |rJoDgvdeG) (:text |list->)
              |r $ %{} :Expr (:at 1610031532007) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031540975) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610031542832) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610031548072) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031584471) (:by |rJoDgvdeG) (:text |create-list-element)
                  |j $ %{} :Leaf (:at 1610031553185) (:by |rJoDgvdeG) (:text |:div)
                  |r $ %{} :Leaf (:at 1610031560189) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610031561655) (:by |rJoDgvdeG) (:text |children)
        |mount-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-app!)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1612012121603) (:by |rJoDgvdeG) (:text |element)
                  |r $ %{} :Leaf (:at 1615647043808) (:by |rJoDgvdeG) (:text |*dispatch-fn)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1610186894501) (:by |rJoDgvdeG) (:text |;)
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |assert)
                  |b $ %{} :Leaf (:at 1612062556808) (:by |rJoDgvdeG) (:text "||1st argument should be an element")
                  |j $ %{} :Expr (:at 1610186845358) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1610186881050) (:by |rJoDgvdeG) (:text |or)
                      |L $ %{} :Expr (:at 1610186847878) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610186883285) (:by |rJoDgvdeG) (:text |nil?)
                          |j $ %{} :Leaf (:at 1610186852681) (:by |rJoDgvdeG) (:text |target)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1643707811109) (:by |rJoDgvdeG) (:text |instance?)
                          |X $ %{} :Leaf (:at 1643707827045) (:by |rJoDgvdeG) (:text |element-type)
                          |b $ %{} :Leaf (:at 1643707815266) (:by |rJoDgvdeG) (:text |target)
              |x $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1610186895410) (:by |rJoDgvdeG) (:text |;)
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |assert)
                  |b $ %{} :Leaf (:at 1612062560605) (:by |rJoDgvdeG) (:text "||2nd argument should be a component")
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
                      |j $ %{} :Leaf (:at 1612012117977) (:by |rJoDgvdeG) (:text |element)
              |y $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |build-deliver-event)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*global-element)
                              |r $ %{} :Leaf (:at 1615647046504) (:by |rJoDgvdeG) (:text |*dispatch-fn)
                      |r $ %{} :Expr (:at 1571583125696) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571583125696) (:by |rJoDgvdeG) (:text |*changes)
                          |j $ %{} :Expr (:at 1612107603418) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1689524535750) (:by |rJoDgvdeG) (:text |atom)
                              |T $ %{} :Expr (:at 1689524537405) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689524537586) (:by |rJoDgvdeG) (:text |[])
                      |v $ %{} :Expr (:at 1571583130554) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571583130554) (:by |rJoDgvdeG) (:text |collect!)
                          |j $ %{} :Expr (:at 1571583130554) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571583130554) (:by |rJoDgvdeG) (:text |fn)
                              |h $ %{} :Expr (:at 1689524719069) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689524718751) (:by |rJoDgvdeG) (:text |op)
                              |v $ %{} :Expr (:at 1571583130554) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571583130554) (:by |rJoDgvdeG) (:text |swap!)
                                  |j $ %{} :Leaf (:at 1571583130554) (:by |rJoDgvdeG) (:text |*changes)
                                  |r $ %{} :Leaf (:at 1571583130554) (:by |rJoDgvdeG) (:text |conj)
                                  |t $ %{} :Leaf (:at 1689524715684) (:by |rJoDgvdeG) (:text |op)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||mount app")
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |activate-instance!)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
                  |w $ %{} :Expr (:at 1571583146439) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1571583152433) (:by |rJoDgvdeG) (:text |collect-mounting)
                      |j $ %{} :Leaf (:at 1571583154801) (:by |rJoDgvdeG) (:text |collect!)
                      |n $ %{} :Expr (:at 1612061234309) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612061234700) (:by |rJoDgvdeG) (:text |[])
                      |r $ %{} :Expr (:at 1571583155692) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571583155267) (:by |rJoDgvdeG) (:text |[])
                      |v $ %{} :Leaf (:at 1571583164474) (:by |rJoDgvdeG) (:text |element)
                      |x $ %{} :Leaf (:at 1572885066295) (:by |rJoDgvdeG) (:text |true)
                  |wT $ %{} :Expr (:at 1571583222453) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1571583222453) (:by |rJoDgvdeG) (:text |patch-instance!)
                      |j $ %{} :Leaf (:at 1571583222453) (:by |rJoDgvdeG) (:text |@*changes)
                      |r $ %{} :Leaf (:at 1571583222453) (:by |rJoDgvdeG) (:text |target)
                      |v $ %{} :Leaf (:at 1571583222453) (:by |rJoDgvdeG) (:text |deliver-event)
                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |reset!)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*global-element)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
        |option $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610698325447) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610698325447) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610698328524) (:by |rJoDgvdeG) (:text |option)
              |r $ %{} :Expr (:at 1610698325447) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610698325447) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610698325447) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610698325447) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610698325447) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610698325447) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610698331006) (:by |rJoDgvdeG) (:text |:option)
                  |r $ %{} :Leaf (:at 1610698325447) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610698325447) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977894840) (:by |rJoDgvdeG) (:text |children)
        |pre $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610031313487) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610031313487) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610031315138) (:by |rJoDgvdeG) (:text |pre)
              |r $ %{} :Expr (:at 1610031313487) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031313487) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610031313487) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610031313487) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610031313487) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031313487) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610031317153) (:by |rJoDgvdeG) (:text |:pre)
                  |r $ %{} :Leaf (:at 1610031313487) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610031313487) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977943117) (:by |rJoDgvdeG) (:text |children)
        |realize-ssr! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |realize-ssr!)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1612012167973) (:by |rJoDgvdeG) (:text |element)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dispatch!)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |assert)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |instance?)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element-type)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||1st argument should be an element")
              |x $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |assert)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
                      |j $ %{} :Leaf (:at 1612012164211) (:by |rJoDgvdeG) (:text |element)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||2nd argument should be a component")
              |y $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |j $ %{} :Expr (:at 1529832063849) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529832069280) (:by |root) (:text |app-element)
                          |j $ %{} :Expr (:at 1529815617824) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529815642401) (:by |root) (:text |.-firstElementChild)
                              |j $ %{} :Leaf (:at 1529815626176) (:by |root) (:text |target)
                      |r $ %{} :Expr (:at 1572231935928) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572231935928) (:by |root) (:text |*changes)
                          |j $ %{} :Expr (:at 1666279033856) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666279033856) (:by |rJoDgvdeG) (:text |atom)
                              |b $ %{} :Expr (:at 1666279033856) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666279033856) (:by |rJoDgvdeG) (:text |[])
                      |v $ %{} :Expr (:at 1572231940314) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572231940314) (:by |root) (:text |collect!)
                          |j $ %{} :Expr (:at 1572231940314) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572231940314) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1647335771148) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1647335771148) (:by |rJoDgvdeG) (:text |op)
                                  |b $ %{} :Leaf (:at 1647335771148) (:by |rJoDgvdeG) (:text |coord)
                                  |h $ %{} :Leaf (:at 1647335771148) (:by |rJoDgvdeG) (:text |n-coord)
                                  |l $ %{} :Leaf (:at 1647335771148) (:by |rJoDgvdeG) (:text |v)
                              |v $ %{} :Expr (:at 1572231940314) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572231940314) (:by |root) (:text |swap!)
                                  |j $ %{} :Leaf (:at 1572231940314) (:by |root) (:text |*changes)
                                  |r $ %{} :Leaf (:at 1572231940314) (:by |root) (:text |conj)
                                  |v $ %{} :Expr (:at 1647335773669) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647335773850) (:by |rJoDgvdeG) (:text |[])
                                      |b $ %{} :Leaf (:at 1647335774879) (:by |rJoDgvdeG) (:text |op)
                                      |h $ %{} :Leaf (:at 1647335774879) (:by |rJoDgvdeG) (:text |coord)
                                      |l $ %{} :Leaf (:at 1647335774879) (:by |rJoDgvdeG) (:text |n-coord)
                                      |o $ %{} :Leaf (:at 1647335774879) (:by |rJoDgvdeG) (:text |v)
                      |x $ %{} :Expr (:at 1572232092948) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572232092948) (:by |root) (:text |deliver-event)
                          |j $ %{} :Expr (:at 1572232092948) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572232092948) (:by |root) (:text |build-deliver-event)
                              |j $ %{} :Leaf (:at 1572232092948) (:by |root) (:text |*global-element)
                              |r $ %{} :Leaf (:at 1572232092948) (:by |root) (:text |dispatch!)
                  |w $ %{} :Expr (:at 1529832194519) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1529832196460) (:by |root) (:text |if)
                      |L $ %{} :Expr (:at 1529832079527) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529832161915) (:by |root) (:text |nil?)
                          |j $ %{} :Leaf (:at 1529832082894) (:by |root) (:text |app-element)
                      |T $ %{} :Expr (:at 1610611689277) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610611689277) (:by |rJoDgvdeG) (:text |raise)
                          |j $ %{} :Leaf (:at 1610611689277) (:by |rJoDgvdeG) (:text "|\"Detected no element from SSR!")
                  |x $ %{} :Expr (:at 1529815663311) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529815670222) (:by |root) (:text |compare-to-dom!)
                      |j $ %{} :Expr (:at 1529815398942) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529815402369) (:by |root) (:text |purify-element)
                          |j $ %{} :Leaf (:at 1529815403992) (:by |root) (:text |element)
                      |r $ %{} :Leaf (:at 1529832076748) (:by |root) (:text |app-element)
                  |xT $ %{} :Expr (:at 1572231952932) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572231952932) (:by |root) (:text |collect-mounting)
                      |j $ %{} :Leaf (:at 1572231952932) (:by |root) (:text |collect!)
                      |n $ %{} :Expr (:at 1613375538140) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613375538457) (:by |rJoDgvdeG) (:text |[])
                      |r $ %{} :Expr (:at 1572231952932) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572231952932) (:by |root) (:text |[])
                      |v $ %{} :Leaf (:at 1572231952932) (:by |root) (:text |element)
                      |x $ %{} :Leaf (:at 1572885203913) (:by |rJoDgvdeG) (:text |true)
                  |xj $ %{} :Expr (:at 1572231958599) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572231958599) (:by |root) (:text |patch-instance!)
                      |j $ %{} :Leaf (:at 1572231958599) (:by |root) (:text |@*changes)
                      |r $ %{} :Leaf (:at 1572231958599) (:by |root) (:text |target)
                      |v $ %{} :Leaf (:at 1572231958599) (:by |root) (:text |deliver-event)
                  |y $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |reset!)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*global-element)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mute-element)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
        |render! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |render!)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |markup)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dispatch!)
              |t $ %{} :Expr (:at 1615646999982) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1615647024970) (:by |rJoDgvdeG) (:text |reset!)
                  |T $ %{} :Leaf (:at 1615647005614) (:by |rJoDgvdeG) (:text |*dispatch-fn)
                  |j $ %{} :Leaf (:at 1615647029249) (:by |rJoDgvdeG) (:text |dispatch!)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |some?)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*global-element)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rerender-app!)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |markup)
                      |v $ %{} :Leaf (:at 1615647033830) (:by |rJoDgvdeG) (:text |*dispatch-fn)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-app!)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |markup)
                      |v $ %{} :Leaf (:at 1615647034828) (:by |rJoDgvdeG) (:text |*dispatch-fn)
        |rerender-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rerender-app!)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1612012096451) (:by |rJoDgvdeG) (:text |element)
                  |r $ %{} :Leaf (:at 1615647037251) (:by |rJoDgvdeG) (:text |*dispatch-fn)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |build-deliver-event)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*global-element)
                              |r $ %{} :Leaf (:at 1615647038575) (:by |rJoDgvdeG) (:text |*dispatch-fn)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*changes)
                          |b $ %{} :Expr (:at 1666278981705) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1666278982224) (:by |rJoDgvdeG) (:text |atom)
                              |b $ %{} :Expr (:at 1666278983310) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1666278983365) (:by |rJoDgvdeG) (:text |[])
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1647335728756) (:by |rJoDgvdeG) (:text |op)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |swap!)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*changes)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |conj)
                                  |t $ %{} :Leaf (:at 1689525075835) (:by |rJoDgvdeG) (:text |op)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*global-element)
                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-element-diffs)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |[])
                      |t $ %{} :Expr (:at 1612022533415) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612022532943) (:by |rJoDgvdeG) (:text |[])
                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*global-element)
                      |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                  |y $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1645976302292) (:by |rJoDgvdeG) (:text |if-let)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |logger)
                          |b $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*changes-logger)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |logger)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*global-element)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                          |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*changes)
                  |yD $ %{} :Expr (:at 1621413193633) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1621413923727) (:by |rJoDgvdeG) (:text |;)
                      |T $ %{} :Leaf (:at 1621413271995) (:by |rJoDgvdeG) (:text |js/console.log)
                      |j $ %{} :Leaf (:at 1621413193633) (:by |rJoDgvdeG) (:text ||Changes:)
                      |r $ %{} :Leaf (:at 1621413193633) (:by |rJoDgvdeG) (:text |@*changes)
                  |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |patch-instance!)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |@*changes)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |deliver-event)
                  |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |reset!)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |*global-element)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
        |script $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610285521266) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610285521266) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610285523160) (:by |rJoDgvdeG) (:text |script)
              |r $ %{} :Expr (:at 1610285521266) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610285521266) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610285521266) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610285521266) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610285521266) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610285521266) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610285525860) (:by |rJoDgvdeG) (:text |:script)
                  |r $ %{} :Leaf (:at 1610285521266) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610285521266) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977917287) (:by |rJoDgvdeG) (:text |children)
        |select $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610698318880) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610698318880) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610698320664) (:by |rJoDgvdeG) (:text |select)
              |r $ %{} :Expr (:at 1610698318880) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610698318880) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610698318880) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610698318880) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610698318880) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610698318880) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610698322954) (:by |rJoDgvdeG) (:text |:select)
                  |r $ %{} :Leaf (:at 1610698318880) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610698318880) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977900586) (:by |rJoDgvdeG) (:text |children)
        |span $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610031356233) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610031356233) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610031358035) (:by |rJoDgvdeG) (:text |span)
              |r $ %{} :Expr (:at 1610031356233) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031356233) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610031356233) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610031356233) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610031356233) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031356233) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610031359954) (:by |rJoDgvdeG) (:text |:span)
                  |r $ %{} :Leaf (:at 1610031356233) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610031356233) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1645977968817) (:by |rJoDgvdeG) (:text |children)
        |style $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610286856590) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610286856590) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610286857848) (:by |rJoDgvdeG) (:text |style)
              |r $ %{} :Expr (:at 1610286856590) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286856590) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610286856590) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610286856590) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610286856590) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286856590) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610286859838) (:by |rJoDgvdeG) (:text |:style)
                  |r $ %{} :Leaf (:at 1610286856590) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610286856590) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1619539801350) (:by |rJoDgvdeG) (:text |children)
        |textarea $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610032926645) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610032926645) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610032928909) (:by |rJoDgvdeG) (:text |textarea)
              |r $ %{} :Expr (:at 1610032926645) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610032926645) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610032926645) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610032926645) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610032926645) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610032926645) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610032931348) (:by |rJoDgvdeG) (:text |:textarea)
                  |r $ %{} :Leaf (:at 1610032926645) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610032926645) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Expr (:at 1619539807158) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619539807158) (:by |rJoDgvdeG) (:text |map)
                      |j $ %{} :Leaf (:at 1619539807158) (:by |rJoDgvdeG) (:text |children)
                      |r $ %{} :Leaf (:at 1619539807158) (:by |rJoDgvdeG) (:text |confirm-child)
        |title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610286151965) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610286151965) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610286153789) (:by |rJoDgvdeG) (:text |title)
              |r $ %{} :Expr (:at 1610286151965) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286151965) (:by |rJoDgvdeG) (:text |props)
                  |j $ %{} :Leaf (:at 1610286151965) (:by |rJoDgvdeG) (:text |&)
                  |r $ %{} :Leaf (:at 1610286151965) (:by |rJoDgvdeG) (:text |children)
              |v $ %{} :Expr (:at 1610286151965) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610286151965) (:by |rJoDgvdeG) (:text |create-element)
                  |j $ %{} :Leaf (:at 1610286156036) (:by |rJoDgvdeG) (:text |:title)
                  |r $ %{} :Leaf (:at 1610286151965) (:by |rJoDgvdeG) (:text |props)
                  |v $ %{} :Leaf (:at 1610286151965) (:by |rJoDgvdeG) (:text |&)
                  |x $ %{} :Leaf (:at 1619539812251) (:by |rJoDgvdeG) (:text |children)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.core)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.controller.resolve)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |build-deliver-event)
                |x $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.render.diff)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-element-diffs)
                |xT $ %{} :Expr (:at 1571584626730) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1571584633569) (:by |rJoDgvdeG) (:text |respo.render.effect)
                    |r $ %{} :Leaf (:at 1571584635633) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1571584635914) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1571584639313) (:by |rJoDgvdeG) (:text |collect-mounting)
                |y $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |purify-element)
                        |r $ %{} :Leaf (:at 1612763181558) (:by |rJoDgvdeG) (:text |mute-element)
                |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.controller.client)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |activate-instance!)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |patch-instance!)
                |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.list)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |pick-attrs)
                        |n $ %{} :Leaf (:at 1513782741285) (:by |root) (:text |pick-event)
                        |t $ %{} :Leaf (:at 1514823570239) (:by |root) (:text |val-exists?)
                |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.detect)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
                        |r $ %{} :Leaf (:at 1571850642783) (:by |rJoDgvdeG) (:text |element?)
                        |v $ %{} :Leaf (:at 1612012412557) (:by |rJoDgvdeG) (:text |effect?)
                |yv $ %{} :Expr (:at 1509727695077) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1509727698379) (:by |root) (:text |respo.schema)
                    |r $ %{} :Leaf (:at 1509727698767) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1509727699801) (:by |root) (:text |schema)
                |yxT $ %{} :Expr (:at 1612763276296) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1612763280273) (:by |rJoDgvdeG) (:text |respo.util.dom)
                    |r $ %{} :Leaf (:at 1612763281554) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1612763281759) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1612763283031) (:by |rJoDgvdeG) (:text |compare-to-dom!)
                |z $ %{} :Expr (:at 1650634103152) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1650634107485) (:by |rJoDgvdeG) (:text |memof.once)
                    |b $ %{} :Leaf (:at 1650634108285) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1650634108519) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1650634136585) (:by |rJoDgvdeG) (:text |reset-memof1-caches!)
    |respo.css $ %{} :FileEntry
      :defs $ {}
        |*style-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651174578680) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1651174593277) (:by |rJoDgvdeG) (:text |defatom)
              |b $ %{} :Leaf (:at 1651174578680) (:by |rJoDgvdeG) (:text |*style-caches)
              |h $ %{} :Expr (:at 1651174578680) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651174595152) (:by |rJoDgvdeG) (:text |{})
        |*style-list-in-nodejs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1659096699553) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1659096701187) (:by |rJoDgvdeG) (:text |defatom)
              |b $ %{} :Leaf (:at 1659096699553) (:by |rJoDgvdeG) (:text |*style-list-in-nodejs)
              |h $ %{} :Expr (:at 1659096699553) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1659096703279) (:by |rJoDgvdeG) (:text |[])
        |create-style! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651174626759) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1651174626759) (:by |rJoDgvdeG) (:text |defn)
              |b $ %{} :Leaf (:at 1651174626759) (:by |rJoDgvdeG) (:text |create-style!)
              |h $ %{} :Expr (:at 1651174626759) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651174970674) (:by |rJoDgvdeG) (:text |style-name)
                  |b $ %{} :Leaf (:at 1651174972502) (:by |rJoDgvdeG) (:text |rules)
              |l $ %{} :Expr (:at 1651174973342) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651174975272) (:by |rJoDgvdeG) (:text |assert)
                  |b $ %{} :Leaf (:at 1651174983001) (:by |rJoDgvdeG) (:text "|\"expected rules in map")
                  |h $ %{} :Expr (:at 1651175037042) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651175039872) (:by |rJoDgvdeG) (:text |map?)
                      |b $ %{} :Leaf (:at 1651175041527) (:by |rJoDgvdeG) (:text |rules)
              |o $ %{} :Expr (:at 1651175424571) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651175425232) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1651175426091) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651175428344) (:by |rJoDgvdeG) (:text |contains?)
                      |b $ %{} :Leaf (:at 1651175431646) (:by |rJoDgvdeG) (:text |@*style-caches)
                      |h $ %{} :Leaf (:at 1651175436475) (:by |rJoDgvdeG) (:text |style-name)
                  |P $ %{} :Expr (:at 1651175525993) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1651175526663) (:by |rJoDgvdeG) (:text |if)
                      |L $ %{} :Expr (:at 1651175529425) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651175542850) (:by |rJoDgvdeG) (:text |=)
                          |X $ %{} :Leaf (:at 1651175536174) (:by |rJoDgvdeG) (:text |rules)
                          |b $ %{} :Expr (:at 1651175529425) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651175529425) (:by |rJoDgvdeG) (:text |get-in)
                              |b $ %{} :Leaf (:at 1651175529425) (:by |rJoDgvdeG) (:text |@*style-caches)
                              |h $ %{} :Expr (:at 1651175529425) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175529425) (:by |rJoDgvdeG) (:text |[])
                                  |b $ %{} :Leaf (:at 1651175529425) (:by |rJoDgvdeG) (:text |style-name)
                                  |h $ %{} :Leaf (:at 1651175529425) (:by |rJoDgvdeG) (:text |:rules)
                      |P $ %{} :Leaf (:at 1651176903256) (:by |rJoDgvdeG) (:text |style-name)
                      |T $ %{} :Expr (:at 1651175496709) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651175498056) (:by |rJoDgvdeG) (:text |let)
                          |b $ %{} :Expr (:at 1651175498299) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1651175498989) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175500615) (:by |rJoDgvdeG) (:text |style-el)
                                  |b $ %{} :Expr (:at 1651175504489) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651175504489) (:by |rJoDgvdeG) (:text |get-in)
                                      |b $ %{} :Leaf (:at 1651175504489) (:by |rJoDgvdeG) (:text |@*style-caches)
                                      |h $ %{} :Expr (:at 1651175504489) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651175504489) (:by |rJoDgvdeG) (:text |[])
                                          |b $ %{} :Leaf (:at 1651175504489) (:by |rJoDgvdeG) (:text |style-name)
                                          |h $ %{} :Leaf (:at 1651175506448) (:by |rJoDgvdeG) (:text |:el)
                              |b $ %{} :Expr (:at 1651175566664) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175566664) (:by |rJoDgvdeG) (:text |css-block)
                                  |b $ %{} :Expr (:at 1651175613769) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651175616415) (:by |rJoDgvdeG) (:text |render-css-block)
                                      |b $ %{} :Leaf (:at 1651175622200) (:by |rJoDgvdeG) (:text |style-name)
                                      |h $ %{} :Leaf (:at 1651175622900) (:by |rJoDgvdeG) (:text |rules)
                          |h $ %{} :Expr (:at 1651175571619) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651175571619) (:by |rJoDgvdeG) (:text |set!)
                              |b $ %{} :Expr (:at 1651175571619) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175571619) (:by |rJoDgvdeG) (:text |.-innerHTML)
                                  |b $ %{} :Leaf (:at 1651175571619) (:by |rJoDgvdeG) (:text |style-el)
                              |h $ %{} :Leaf (:at 1651175571619) (:by |rJoDgvdeG) (:text |css-block)
                          |l $ %{} :Expr (:at 1651175578358) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651175578358) (:by |rJoDgvdeG) (:text |swap!)
                              |b $ %{} :Leaf (:at 1651175578358) (:by |rJoDgvdeG) (:text |*style-caches)
                              |h $ %{} :Leaf (:at 1651175580381) (:by |rJoDgvdeG) (:text |assoc-in)
                              |l $ %{} :Expr (:at 1651175581547) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1651175582171) (:by |rJoDgvdeG) (:text |[])
                                  |T $ %{} :Leaf (:at 1651175578358) (:by |rJoDgvdeG) (:text |style-name)
                                  |b $ %{} :Leaf (:at 1651175588320) (:by |rJoDgvdeG) (:text |:rules)
                              |o $ %{} :Leaf (:at 1651175590698) (:by |rJoDgvdeG) (:text |rules)
                          |o $ %{} :Leaf (:at 1651176885114) (:by |rJoDgvdeG) (:text |style-name)
                  |T $ %{} :Expr (:at 1659097577356) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1659097582857) (:by |rJoDgvdeG) (:text |let)
                      |L $ %{} :Expr (:at 1659097585431) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Expr (:at 1659097585128) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1659097585128) (:by |rJoDgvdeG) (:text |css-block)
                              |b $ %{} :Expr (:at 1659097585128) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1659097585128) (:by |rJoDgvdeG) (:text |render-css-block)
                                  |b $ %{} :Leaf (:at 1659097585128) (:by |rJoDgvdeG) (:text |style-name)
                                  |h $ %{} :Leaf (:at 1659097585128) (:by |rJoDgvdeG) (:text |rules)
                      |T $ %{} :Expr (:at 1659096575241) (:by |rJoDgvdeG)
                        :data $ {}
                          |5 $ %{} :Leaf (:at 1659096603462) (:by |rJoDgvdeG) (:text |if)
                          |D $ %{} :Leaf (:at 1659096577889) (:by |rJoDgvdeG) (:text |nodejs?)
                          |L $ %{} :Expr (:at 1659096609101) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1659096689349) (:by |rJoDgvdeG) (:text |swap!)
                              |T $ %{} :Leaf (:at 1659097403990) (:by |rJoDgvdeG) (:text |*style-list-in-nodejs)
                              |b $ %{} :Leaf (:at 1659096690410) (:by |rJoDgvdeG) (:text |conj)
                              |h $ %{} :Leaf (:at 1659097590600) (:by |rJoDgvdeG) (:text |css-block)
                          |T $ %{} :Expr (:at 1651175240132) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1651175240868) (:by |rJoDgvdeG) (:text |let)
                              |T $ %{} :Expr (:at 1651175242467) (:by |rJoDgvdeG)
                                :data $ {}
                                  |b $ %{} :Expr (:at 1651175284531) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651175287528) (:by |rJoDgvdeG) (:text |style-el)
                                      |b $ %{} :Expr (:at 1651175287942) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651175294053) (:by |rJoDgvdeG) (:text |js/document.createElement)
                                          |b $ %{} :Leaf (:at 1651175296327) (:by |rJoDgvdeG) (:text "|\"style")
                              |X $ %{} :Expr (:at 1651175298729) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175304642) (:by |rJoDgvdeG) (:text |set!)
                                  |b $ %{} :Expr (:at 1651175307704) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651175309690) (:by |rJoDgvdeG) (:text |.-innerHTML)
                                      |b $ %{} :Leaf (:at 1651175311488) (:by |rJoDgvdeG) (:text |style-el)
                                  |h $ %{} :Leaf (:at 1651175316541) (:by |rJoDgvdeG) (:text |css-block)
                              |Z $ %{} :Expr (:at 1651175725468) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175735768) (:by |rJoDgvdeG) (:text |set!)
                                  |b $ %{} :Expr (:at 1651175736230) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651175740907) (:by |rJoDgvdeG) (:text |.-id)
                                      |b $ %{} :Leaf (:at 1651175743179) (:by |rJoDgvdeG) (:text |style-el)
                                  |h $ %{} :Leaf (:at 1651175745298) (:by |rJoDgvdeG) (:text |style-name)
                              |b $ %{} :Expr (:at 1651175261628) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175277547) (:by |rJoDgvdeG) (:text |js/document.head.appendChild)
                                  |b $ %{} :Leaf (:at 1651175282810) (:by |rJoDgvdeG) (:text |style-el)
                              |h $ %{} :Expr (:at 1651175326714) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175341289) (:by |rJoDgvdeG) (:text |swap!)
                                  |b $ %{} :Leaf (:at 1651175347176) (:by |rJoDgvdeG) (:text |*style-caches)
                                  |h $ %{} :Leaf (:at 1651175350947) (:by |rJoDgvdeG) (:text |assoc)
                                  |l $ %{} :Leaf (:at 1651175359742) (:by |rJoDgvdeG) (:text |style-name)
                                  |o $ %{} :Expr (:at 1651175362547) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651175362851) (:by |rJoDgvdeG) (:text |{})
                                      |b $ %{} :Expr (:at 1651175363926) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651175367765) (:by |rJoDgvdeG) (:text |:rules)
                                          |b $ %{} :Leaf (:at 1651175370605) (:by |rJoDgvdeG) (:text |rules)
                                      |h $ %{} :Expr (:at 1651175371708) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651175374961) (:by |rJoDgvdeG) (:text |:el)
                                          |b $ %{} :Leaf (:at 1651175384722) (:by |rJoDgvdeG) (:text |style-el)
                      |b $ %{} :Leaf (:at 1659097593779) (:by |rJoDgvdeG) (:text |style-name)
        |defstyle $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651174523252) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1651174631916) (:by |rJoDgvdeG) (:text |defmacro)
              |b $ %{} :Leaf (:at 1651174523252) (:by |rJoDgvdeG) (:text |defstyle)
              |h $ %{} :Expr (:at 1651174523252) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651174665273) (:by |rJoDgvdeG) (:text |style-name)
                  |b $ %{} :Leaf (:at 1651174644648) (:by |rJoDgvdeG) (:text |rules)
              |i $ %{} :Expr (:at 1651174843100) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651174843100) (:by |rJoDgvdeG) (:text |assert)
                  |b $ %{} :Leaf (:at 1651174861992) (:by |rJoDgvdeG) (:text "|\"expected symbol of style-name")
                  |h $ %{} :Expr (:at 1651174843100) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651174843100) (:by |rJoDgvdeG) (:text |symbol?)
                      |b $ %{} :Leaf (:at 1651175893994) (:by |rJoDgvdeG) (:text |style-name)
              |l $ %{} :Expr (:at 1651174697214) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1651174698002) (:by |rJoDgvdeG) (:text |let)
                  |L $ %{} :Expr (:at 1651174698310) (:by |rJoDgvdeG)
                    :data $ {}
                      |b $ %{} :Expr (:at 1651174772326) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651180005690) (:by |rJoDgvdeG) (:text |style-name-str)
                          |b $ %{} :Expr (:at 1651174774495) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651174775125) (:by |rJoDgvdeG) (:text |str)
                              |b $ %{} :Expr (:at 1691559420795) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1691559422116) (:by |rJoDgvdeG) (:text |->)
                                  |T $ %{} :Expr (:at 1651175922028) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1651175924164) (:by |rJoDgvdeG) (:text |turn-string)
                                      |T $ %{} :Leaf (:at 1651174781253) (:by |rJoDgvdeG) (:text |style-name)
                                  |b $ %{} :Expr (:at 1691559423498) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691559446551) (:by |rJoDgvdeG) (:text |&str:replace)
                                      |b $ %{} :Leaf (:at 1691559450754) (:by |rJoDgvdeG) (:text "|\"!")
                                      |h $ %{} :Leaf (:at 1691559854313) (:by |rJoDgvdeG) (:text "|\"_EX_")
                                  |h $ %{} :Expr (:at 1691559423498) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691559446551) (:by |rJoDgvdeG) (:text |&str:replace)
                                      |b $ %{} :Leaf (:at 1691559460534) (:by |rJoDgvdeG) (:text "|\"?")
                                      |h $ %{} :Leaf (:at 1691559857343) (:by |rJoDgvdeG) (:text "|\"_QU_")
                              |e $ %{} :Leaf (:at 1651180054699) (:by |rJoDgvdeG) (:text "|\"__")
                              |j $ %{} :Expr (:at 1691559469354) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1691559470090) (:by |rJoDgvdeG) (:text |->)
                                  |H $ %{} :Expr (:at 1691559474429) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691559474429) (:by |rJoDgvdeG) (:text |:ns)
                                      |b $ %{} :Expr (:at 1691559474429) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1691559474429) (:by |rJoDgvdeG) (:text |&extract-code-into-edn)
                                          |b $ %{} :Leaf (:at 1691559474429) (:by |rJoDgvdeG) (:text |style-name)
                                  |L $ %{} :Expr (:at 1691559470632) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1691559470632) (:by |rJoDgvdeG) (:text |turn-string)
                                  |T $ %{} :Expr (:at 1651180059611) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1691559467157) (:by |rJoDgvdeG) (:text |&str:replace)
                                      |b $ %{} :Leaf (:at 1651180063179) (:by |rJoDgvdeG) (:text "|\".")
                                      |h $ %{} :Leaf (:at 1651180064810) (:by |rJoDgvdeG) (:text "|\"_")
                  |T $ %{} :Expr (:at 1651174645559) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651174650817) (:by |rJoDgvdeG) (:text |quasiquote)
                      |b $ %{} :Expr (:at 1651174651752) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1651174678031) (:by |rJoDgvdeG) (:text |def)
                          |T $ %{} :Leaf (:at 1651174671433) (:by |rJoDgvdeG) (:text |~style-name)
                          |b $ %{} :Expr (:at 1651174680848) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651174685874) (:by |rJoDgvdeG) (:text |create-style!)
                              |X $ %{} :Leaf (:at 1651180009735) (:by |rJoDgvdeG) (:text |~style-name-str)
                              |b $ %{} :Leaf (:at 1651174691171) (:by |rJoDgvdeG) (:text |~rules)
        |nodejs? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1659096578360) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1659096578360) (:by |rJoDgvdeG) (:text |def)
              |b $ %{} :Leaf (:at 1659096578360) (:by |rJoDgvdeG) (:text |nodejs?)
              |h $ %{} :Expr (:at 1659096578360) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1659096582166) (:by |rJoDgvdeG) (:text |and)
                  |b $ %{} :Expr (:at 1659096583325) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1659096586316) (:by |rJoDgvdeG) (:text |exists?)
                      |b $ %{} :Leaf (:at 1659096589460) (:by |rJoDgvdeG) (:text |js/process)
                  |h $ %{} :Expr (:at 1659096591188) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1659096599191) (:by |rJoDgvdeG) (:text |=)
                      |T $ %{} :Leaf (:at 1659096597875) (:by |rJoDgvdeG) (:text |js/process.release.name)
                      |b $ %{} :Leaf (:at 1659096601198) (:by |rJoDgvdeG) (:text "|\"node")
        |render-css-block $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1651175623744) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1651175623744) (:by |rJoDgvdeG) (:text |defn)
              |b $ %{} :Leaf (:at 1651175623744) (:by |rJoDgvdeG) (:text |render-css-block)
              |h $ %{} :Expr (:at 1651175623744) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651175623744) (:by |rJoDgvdeG) (:text |style-name)
                  |b $ %{} :Leaf (:at 1651175623744) (:by |rJoDgvdeG) (:text |rules)
              |l $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |->)
                  |b $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |rules)
                  |h $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651176245931) (:by |rJoDgvdeG) (:text |.map-list)
                      |b $ %{} :Expr (:at 1651176257159) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1651176257752) (:by |rJoDgvdeG) (:text |fn)
                          |L $ %{} :Expr (:at 1651176280875) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651176281453) (:by |rJoDgvdeG) (:text |pair)
                          |T $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1651176266271) (:by |rJoDgvdeG) (:text |let)
                              |b $ %{} :Expr (:at 1651176267414) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651176268477) (:by |rJoDgvdeG) (:text |k)
                                      |X $ %{} :Expr (:at 1706302915913) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1706302917520) (:by |rJoDgvdeG) (:text |turn-string)
                                          |T $ %{} :Expr (:at 1651176270158) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651176271006) (:by |rJoDgvdeG) (:text |nth)
                                              |b $ %{} :Leaf (:at 1651176271581) (:by |rJoDgvdeG) (:text |pair)
                                              |h $ %{} :Leaf (:at 1651176272046) (:by |rJoDgvdeG) (:text |0)
                                  |b $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651176276188) (:by |rJoDgvdeG) (:text |v)
                                      |X $ %{} :Expr (:at 1651176270158) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651176271006) (:by |rJoDgvdeG) (:text |nth)
                                          |b $ %{} :Leaf (:at 1651176271581) (:by |rJoDgvdeG) (:text |pair)
                                          |h $ %{} :Leaf (:at 1651176278188) (:by |rJoDgvdeG) (:text |1)
                              |h $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |assert)
                                  |b $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\"expected rule name in string")
                                  |h $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |string?)
                                      |b $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |k)
                              |l $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |assert)
                                  |b $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\"expected rule styles in map")
                                  |h $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |map?)
                                      |b $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |v)
                              |o $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |let)
                                  |b $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Expr (:at 1685803941510) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1685803945537) (:by |rJoDgvdeG) (:text |class-rule)
                                          |b $ %{} :Expr (:at 1685803947480) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1685803947480) (:by |rJoDgvdeG) (:text |str)
                                              |b $ %{} :Leaf (:at 1685803947480) (:by |rJoDgvdeG) (:text "|\".")
                                              |h $ %{} :Leaf (:at 1685803947480) (:by |rJoDgvdeG) (:text |style-name)
                                      |T $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |rule-name)
                                          |b $ %{} :Expr (:at 1685803933314) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1685803934030) (:by |rJoDgvdeG) (:text |->)
                                              |L $ %{} :Leaf (:at 1685803934875) (:by |rJoDgvdeG) (:text |k)
                                              |T $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |.!replace)
                                                  |h $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\"$0")
                                                  |l $ %{} :Leaf (:at 1685803949829) (:by |rJoDgvdeG) (:text |class-rule)
                                              |b $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |.!replace)
                                                  |h $ %{} :Leaf (:at 1685803955655) (:by |rJoDgvdeG) (:text "|\"&")
                                                  |l $ %{} :Leaf (:at 1685803952943) (:by |rJoDgvdeG) (:text |class-rule)
                                      |b $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |css-line)
                                          |b $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1651175814512) (:by |rJoDgvdeG) (:text |style->string)
                                              |b $ %{} :Expr (:at 1651176091672) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1651176094174) (:by |rJoDgvdeG) (:text |.to-list)
                                                  |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |v)
                                  |h $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |str)
                                      |b $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |rule-name)
                                      |h $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\" {")
                                      |l $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |&newline)
                                      |o $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |css-line)
                                      |q $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |&newline)
                                      |s $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text "|\"}")
                  |l $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |.to-list)
                  |o $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |.join-str)
                      |b $ %{} :Expr (:at 1651175625214) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |str)
                          |b $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |&newline)
                          |h $ %{} :Leaf (:at 1651175625214) (:by |rJoDgvdeG) (:text |&newline)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1651174518020) (:by |rJoDgvdeG)
          :data $ {}
            |T $ %{} :Leaf (:at 1651174518020) (:by |rJoDgvdeG) (:text |ns)
            |b $ %{} :Leaf (:at 1651174518020) (:by |rJoDgvdeG) (:text |respo.css)
            |h $ %{} :Expr (:at 1651175808277) (:by |rJoDgvdeG)
              :data $ {}
                |T $ %{} :Leaf (:at 1651175809147) (:by |rJoDgvdeG) (:text |:require)
                |b $ %{} :Expr (:at 1651175809751) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1705683689090) (:by |rJoDgvdeG) (:text |respo.render.dom)
                    |b $ %{} :Leaf (:at 1651175809751) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1651175809751) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1651175809751) (:by |rJoDgvdeG) (:text |style->string)
    |respo.cursor $ %{} :FileEntry
      :defs $ {}
        |update-states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1584871832107) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1584871832107) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1584871832107) (:by |rJoDgvdeG) (:text |update-states)
              |r $ %{} :Expr (:at 1584871832107) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1584871837564) (:by |rJoDgvdeG) (:text |store)
                  |j $ %{} :Leaf (:at 1687720924218) (:by |rJoDgvdeG) (:text |cursor)
                  |n $ %{} :Leaf (:at 1687720926010) (:by |rJoDgvdeG) (:text |new-state)
              |v $ %{} :Expr (:at 1584871847797) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1584872093061) (:by |rJoDgvdeG) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1584871855179) (:by |rJoDgvdeG) (:text |store)
                  |r $ %{} :Expr (:at 1584871857834) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1584871859467) (:by |rJoDgvdeG) (:text |concat)
                      |j $ %{} :Expr (:at 1584871859709) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584871859893) (:by |rJoDgvdeG) (:text |[])
                          |j $ %{} :Leaf (:at 1584871863170) (:by |rJoDgvdeG) (:text |:states)
                      |r $ %{} :Leaf (:at 1584871878400) (:by |rJoDgvdeG) (:text |cursor)
                      |v $ %{} :Expr (:at 1584871879289) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584871879508) (:by |rJoDgvdeG) (:text |[])
                          |j $ %{} :Leaf (:at 1584871880620) (:by |rJoDgvdeG) (:text |:data)
                  |v $ %{} :Leaf (:at 1584871883571) (:by |rJoDgvdeG) (:text |new-state)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1584871828389) (:by |rJoDgvdeG)
          :data $ {}
            |T $ %{} :Leaf (:at 1584871828389) (:by |rJoDgvdeG) (:text |ns)
            |j $ %{} :Leaf (:at 1584871828389) (:by |rJoDgvdeG) (:text |respo.cursor)
    |respo.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511714064801) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511714147703) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1511714064801) (:by |rJoDgvdeG) (:text |main!)
              |r $ %{} :Expr (:at 1511714064801) (:by |rJoDgvdeG)
                :data $ {}
              |t $ %{} :Expr (:at 1529814828134) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1612763814369) (:by |rJoDgvdeG) (:text |;)
                  |T $ %{} :Leaf (:at 1529814828532) (:by |root) (:text |handle-ssr!)
                  |j $ %{} :Leaf (:at 1529814837949) (:by |root) (:text |mount-target)
              |u $ %{} :Expr (:at 1615274283893) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1615274288270) (:by |rJoDgvdeG) (:text |load-console-formatter!)
              |uT $ %{} :Expr (:at 1645976086358) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1645976088829) (:by |rJoDgvdeG) (:text |if-let)
                  |b $ %{} :Expr (:at 1645976091853) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1645976091853) (:by |rJoDgvdeG) (:text |raw)
                      |b $ %{} :Expr (:at 1645976091853) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1645976091853) (:by |rJoDgvdeG) (:text |js/window.localStorage.getItem)
                          |b $ %{} :Leaf (:at 1650634164619) (:by |rJoDgvdeG) (:text ||respo.calcit)
                  |h $ %{} :Expr (:at 1645976093565) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1645976097593) (:by |rJoDgvdeG) (:text |swap!)
                      |b $ %{} :Leaf (:at 1645976097593) (:by |rJoDgvdeG) (:text |*store)
                      |h $ %{} :Leaf (:at 1645976097593) (:by |rJoDgvdeG) (:text |assoc)
                      |l $ %{} :Leaf (:at 1645976097593) (:by |rJoDgvdeG) (:text |:tasks)
                      |o $ %{} :Expr (:at 1645976097593) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1645976097593) (:by |rJoDgvdeG) (:text |parse-cirru-edn)
                          |b $ %{} :Leaf (:at 1645976097593) (:by |rJoDgvdeG) (:text |raw)
              |v $ %{} :Expr (:at 1511714188800) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511714191933) (:by |rJoDgvdeG) (:text |render-app!)
                  |j $ %{} :Leaf (:at 1511714194378) (:by |rJoDgvdeG) (:text |mount-target)
              |w $ %{} :Expr (:at 1511714210559) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511714197749) (:by |rJoDgvdeG) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1511714217070) (:by |rJoDgvdeG) (:text |*store)
                  |r $ %{} :Leaf (:at 1511714219489) (:by |rJoDgvdeG) (:text |:rerender)
                  |v $ %{} :Expr (:at 1612347101304) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612347101873) (:by |rJoDgvdeG) (:text |fn)
                      |L $ %{} :Expr (:at 1612347102100) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612347103379) (:by |rJoDgvdeG) (:text |store)
                          |j $ %{} :Leaf (:at 1612347104458) (:by |rJoDgvdeG) (:text |prev)
                      |T $ %{} :Expr (:at 1511714220597) (:by |rJoDgvdeG)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1511714232501) (:by |rJoDgvdeG) (:text |render-app!)
                          |r $ %{} :Leaf (:at 1511714235679) (:by |rJoDgvdeG) (:text |mount-target)
              |wT $ %{} :Expr (:at 1511714240706) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1706302809139) (:by |rJoDgvdeG) (:text |;)
                  |T $ %{} :Leaf (:at 1511714243683) (:by |rJoDgvdeG) (:text |reset!)
                  |j $ %{} :Leaf (:at 1511714251576) (:by |rJoDgvdeG) (:text |*changes-logger)
                  |r $ %{} :Expr (:at 1511714252645) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511714260040) (:by |rJoDgvdeG) (:text |fn)
                      |j $ %{} :Expr (:at 1511714260344) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511714261804) (:by |rJoDgvdeG) (:text |old-tree)
                          |j $ %{} :Leaf (:at 1511714263034) (:by |rJoDgvdeG) (:text |new-tree)
                          |r $ %{} :Leaf (:at 1511714264193) (:by |rJoDgvdeG) (:text |changes)
                      |r $ %{} :Expr (:at 1511714265521) (:by |rJoDgvdeG)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1612761921981) (:by |rJoDgvdeG) (:text |js/console.log)
                          |n $ %{} :Leaf (:at 1706300395462) (:by |rJoDgvdeG) (:text "|\"Patch")
                          |r $ %{} :Leaf (:at 1511714272165) (:by |rJoDgvdeG) (:text |changes)
              |wj $ %{} :Expr (:at 1511714274084) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511714275046) (:by |rJoDgvdeG) (:text |println)
                  |j $ %{} :Leaf (:at 1511714279547) (:by |rJoDgvdeG) (:text ||Loaded.)
                  |r $ %{} :Expr (:at 1511714280283) (:by |rJoDgvdeG)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1643707524724) (:by |rJoDgvdeG) (:text |js/performance.now)
              |x $ %{} :Expr (:at 1610285304683) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1666278921851) (:by |rJoDgvdeG) (:text |set!)
                  |j $ %{} :Leaf (:at 1666278916783) (:by |rJoDgvdeG) (:text |js/window.onbeforeunload)
                  |v $ %{} :Expr (:at 1612347118871) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612347119459) (:by |rJoDgvdeG) (:text |fn)
                      |L $ %{} :Expr (:at 1612347119841) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612347120601) (:by |rJoDgvdeG) (:text |event)
                      |T $ %{} :Expr (:at 1612347121576) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610285304683) (:by |rJoDgvdeG) (:text |save-store!)
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511714063789) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511714126882) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1511714063789) (:by |rJoDgvdeG) (:text |mount-target)
              |r $ %{} :Expr (:at 1610284962044) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1610284966288) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1610284966514) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610284969359) (:by |rJoDgvdeG) (:text |exists?)
                      |j $ %{} :Leaf (:at 1610284973062) (:by |rJoDgvdeG) (:text |js/document)
                  |T $ %{} :Expr (:at 1511714063789) (:by |rJoDgvdeG)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1696611514416) (:by |rJoDgvdeG) (:text |js/document.querySelector)
                      |r $ %{} :Leaf (:at 1511714138171) (:by |rJoDgvdeG) (:text ||.app)
                  |j $ %{} :Leaf (:at 1610284978780) (:by |rJoDgvdeG) (:text |nil)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1705596441393) (:by |rJoDgvdeG)
            :data $ {}
              |D $ %{} :Leaf (:at 1705596442679) (:by |rJoDgvdeG) (:text |defn)
              |L $ %{} :Leaf (:at 1705596443397) (:by |rJoDgvdeG) (:text |reload)
              |P $ %{} :Expr (:at 1705596443757) (:by |rJoDgvdeG)
                :data $ {}
              |T $ %{} :Expr (:at 1705596455615) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1705596456197) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1705596457503) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1705596457503) (:by |rJoDgvdeG) (:text |nil?)
                      |b $ %{} :Leaf (:at 1705596457503) (:by |rJoDgvdeG) (:text |build-errors)
                  |T $ %{} :Expr (:at 1511714076488) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1705596462422) (:by |rJoDgvdeG) (:text |do)
                      |t $ %{} :Expr (:at 1614697802769) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614697806530) (:by |rJoDgvdeG) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1614697802769) (:by |rJoDgvdeG) (:text |*store)
                          |r $ %{} :Leaf (:at 1614697802769) (:by |rJoDgvdeG) (:text |:rerender)
                      |v $ %{} :Expr (:at 1511714293542) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511714296695) (:by |rJoDgvdeG) (:text |clear-cache!)
                      |x $ %{} :Expr (:at 1511714297341) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511714299850) (:by |rJoDgvdeG) (:text |render-app!)
                          |j $ %{} :Leaf (:at 1511714301998) (:by |rJoDgvdeG) (:text |mount-target)
                      |xT $ %{} :Expr (:at 1614697800326) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614697800326) (:by |rJoDgvdeG) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1614697800326) (:by |rJoDgvdeG) (:text |*store)
                          |r $ %{} :Leaf (:at 1614697800326) (:by |rJoDgvdeG) (:text |:rerender)
                          |v $ %{} :Expr (:at 1614697800326) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1614697800326) (:by |rJoDgvdeG) (:text |fn)
                              |j $ %{} :Expr (:at 1614697800326) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614697800326) (:by |rJoDgvdeG) (:text |store)
                                  |j $ %{} :Leaf (:at 1614697800326) (:by |rJoDgvdeG) (:text |prev)
                              |r $ %{} :Expr (:at 1614697800326) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1614697800326) (:by |rJoDgvdeG) (:text |render-app!)
                                  |j $ %{} :Leaf (:at 1614697800326) (:by |rJoDgvdeG) (:text |mount-target)
                      |xj $ %{} :Expr (:at 1705596472643) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1705596475490) (:by |rJoDgvdeG) (:text |hud!)
                          |b $ %{} :Leaf (:at 1705596550183) (:by |rJoDgvdeG) (:text "|\"ok~")
                          |h $ %{} :Leaf (:at 1705596483720) (:by |rJoDgvdeG) (:text "|\"Ok")
                      |y $ %{} :Expr (:at 1511714302367) (:by |rJoDgvdeG)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1622298909147) (:by |rJoDgvdeG) (:text |js/console.log)
                          |r $ %{} :Leaf (:at 1647336874527) (:by |rJoDgvdeG) (:text "||code updated.")
                  |b $ %{} :Expr (:at 1705596487750) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1705596558159) (:by |rJoDgvdeG) (:text |hud!)
                      |b $ %{} :Leaf (:at 1705596491569) (:by |rJoDgvdeG) (:text "|\"error")
                      |h $ %{} :Leaf (:at 1705596493706) (:by |rJoDgvdeG) (:text |build-errors)
        |save-store! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511714070196) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511714070196) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1511714070196) (:by |rJoDgvdeG) (:text |save-store!)
              |r $ %{} :Expr (:at 1511714070196) (:by |rJoDgvdeG)
                :data $ {}
              |v $ %{} :Expr (:at 1511714357501) (:by |rJoDgvdeG)
                :data $ {}
                  |j $ %{} :Leaf (:at 1643708667403) (:by |rJoDgvdeG) (:text |js/window.localStorage.setItem)
                  |r $ %{} :Leaf (:at 1610378543688) (:by |rJoDgvdeG) (:text ||respo.calcit)
                  |v $ %{} :Expr (:at 1511714373782) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1643709060668) (:by |rJoDgvdeG) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1511714376733) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511714377407) (:by |rJoDgvdeG) (:text |:tasks)
                          |j $ %{} :Leaf (:at 1511714380697) (:by |rJoDgvdeG) (:text |@*store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1511714053436) (:by |rJoDgvdeG)
          :data $ {}
            |T $ %{} :Leaf (:at 1511714053436) (:by |rJoDgvdeG) (:text |ns)
            |j $ %{} :Leaf (:at 1511714053436) (:by |rJoDgvdeG) (:text |respo.main)
            |r $ %{} :Expr (:at 1511714079782) (:by |rJoDgvdeG)
              :data $ {}
                |T $ %{} :Leaf (:at 1511714088676) (:by |rJoDgvdeG) (:text |:require)
                |j $ %{} :Expr (:at 1511714088948) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1511714092170) (:by |rJoDgvdeG) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1511714092875) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1511714093124) (:by |rJoDgvdeG)
                      :data $ {}
                        |r $ %{} :Leaf (:at 1511714101816) (:by |rJoDgvdeG) (:text |*changes-logger)
                        |v $ %{} :Leaf (:at 1610465510488) (:by |rJoDgvdeG) (:text |clear-cache!)
                |v $ %{} :Expr (:at 1511714112837) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1511714115981) (:by |rJoDgvdeG) (:text |respo.app.core)
                    |r $ %{} :Leaf (:at 1511714117106) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1511714117398) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1511714120365) (:by |rJoDgvdeG) (:text |render-app!)
                        |r $ %{} :Leaf (:at 1511714122091) (:by |rJoDgvdeG) (:text |*store)
                |y $ %{} :Expr (:at 1612763207855) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1612763215603) (:by |rJoDgvdeG) (:text |respo.app.core)
                    |r $ %{} :Leaf (:at 1612763217061) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1612763217245) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1612763217776) (:by |rJoDgvdeG) (:text |handle-ssr!)
                |z $ %{} :Expr (:at 1705596501430) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1705596541023) (:by |rJoDgvdeG) (:text "|\"./calcit.build-errors")
                    |b $ %{} :Leaf (:at 1705596510445) (:by |rJoDgvdeG) (:text |:default)
                    |h $ %{} :Leaf (:at 1705596513430) (:by |rJoDgvdeG) (:text |build-errors)
                |zD $ %{} :Expr (:at 1705596514929) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1705596517681) (:by |rJoDgvdeG) (:text "|\"bottom-tip")
                    |b $ %{} :Leaf (:at 1705596519935) (:by |rJoDgvdeG) (:text |:default)
                    |h $ %{} :Leaf (:at 1705596520864) (:by |rJoDgvdeG) (:text |hud!)
    |respo.render.diff $ %{} :FileEntry
      :defs $ {}
        |detect-keys-dup $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1673971796926) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1673972124092) (:by |rJoDgvdeG) (:text |defn)
              |b $ %{} :Leaf (:at 1673972143168) (:by |rJoDgvdeG) (:text |detect-keys-dup)
              |h $ %{} :Expr (:at 1673971796926) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1673972154260) (:by |rJoDgvdeG) (:text |child-keys)
              |j $ %{} :Expr (:at 1673971880749) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1673972260442) (:by |rJoDgvdeG) (:text |let)
                  |b $ %{} :Expr (:at 1673972264588) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1673972262815) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1673972264211) (:by |rJoDgvdeG) (:text |size)
                          |T $ %{} :Expr (:at 1673972265634) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1673972266606) (:by |rJoDgvdeG) (:text |count)
                              |T $ %{} :Leaf (:at 1673972165045) (:by |rJoDgvdeG) (:text |child-keys)
                      |b $ %{} :Expr (:at 1673972431624) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1673972433418) (:by |rJoDgvdeG) (:text |last-pos)
                          |b $ %{} :Expr (:at 1673972434952) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1673972435791) (:by |rJoDgvdeG) (:text |dec)
                              |b $ %{} :Leaf (:at 1673972436501) (:by |rJoDgvdeG) (:text |size)
                  |h $ %{} :Expr (:at 1673972288321) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1673972288852) (:by |rJoDgvdeG) (:text |if)
                      |L $ %{} :Expr (:at 1673972289096) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1673972289340) (:by |rJoDgvdeG) (:text |>)
                          |b $ %{} :Leaf (:at 1673972290765) (:by |rJoDgvdeG) (:text |size)
                          |h $ %{} :Leaf (:at 1673972291150) (:by |rJoDgvdeG) (:text |1)
                      |V $ %{} :Expr (:at 1673972355515) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1673972358298) (:by |rJoDgvdeG) (:text |apply-args)
                          |b $ %{} :Expr (:at 1673972358836) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1673972363972) (:by |rJoDgvdeG) (:text |0)
                              |b $ %{} :Leaf (:at 1673972419476) (:by |rJoDgvdeG) (:text |1)
                          |h $ %{} :Expr (:at 1673972371493) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1673972373102) (:by |rJoDgvdeG) (:text |fn)
                              |b $ %{} :Expr (:at 1673972373423) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1673972405847) (:by |rJoDgvdeG) (:text |p)
                                  |b $ %{} :Leaf (:at 1673972406308) (:by |rJoDgvdeG) (:text |q)
                              |h $ %{} :Expr (:at 1673972646537) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1673972647078) (:by |rJoDgvdeG) (:text |if)
                                  |L $ %{} :Expr (:at 1673972648911) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1673972648911) (:by |rJoDgvdeG) (:text |&=)
                                      |b $ %{} :Expr (:at 1673972648911) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1673972648911) (:by |rJoDgvdeG) (:text |nth)
                                          |b $ %{} :Leaf (:at 1673972648911) (:by |rJoDgvdeG) (:text |child-keys)
                                          |h $ %{} :Leaf (:at 1673972648911) (:by |rJoDgvdeG) (:text |p)
                                      |h $ %{} :Expr (:at 1673972648911) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1673972648911) (:by |rJoDgvdeG) (:text |nth)
                                          |b $ %{} :Leaf (:at 1673972648911) (:by |rJoDgvdeG) (:text |child-keys)
                                          |h $ %{} :Leaf (:at 1673972648911) (:by |rJoDgvdeG) (:text |q)
                                  |P $ %{} :Expr (:at 1673973028649) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1673973029143) (:by |rJoDgvdeG) (:text |do)
                                      |T $ %{} :Expr (:at 1673972651269) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1673972651269) (:by |rJoDgvdeG) (:text |eprintln)
                                          |b $ %{} :Leaf (:at 1673972651269) (:by |rJoDgvdeG) (:text "|\"duplicated key")
                                          |h $ %{} :Expr (:at 1673972651269) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1673972651269) (:by |rJoDgvdeG) (:text |nth)
                                              |b $ %{} :Leaf (:at 1673972651269) (:by |rJoDgvdeG) (:text |child-keys)
                                              |h $ %{} :Leaf (:at 1673972651269) (:by |rJoDgvdeG) (:text |p)
                                      |b $ %{} :Leaf (:at 1673973031120) (:by |rJoDgvdeG) (:text |true)
                                  |T $ %{} :Expr (:at 1673972408749) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1673972427515) (:by |rJoDgvdeG) (:text |if)
                                      |b $ %{} :Expr (:at 1673972427864) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1673973134098) (:by |rJoDgvdeG) (:text |&<)
                                          |b $ %{} :Leaf (:at 1673972449944) (:by |rJoDgvdeG) (:text |q)
                                          |h $ %{} :Leaf (:at 1673972453198) (:by |rJoDgvdeG) (:text |last-pos)
                                      |h $ %{} :Expr (:at 1673972463711) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1673972473940) (:by |rJoDgvdeG) (:text |recur)
                                          |b $ %{} :Leaf (:at 1673972475795) (:by |rJoDgvdeG) (:text |p)
                                          |h $ %{} :Expr (:at 1673972476234) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1673972476642) (:by |rJoDgvdeG) (:text |inc)
                                              |b $ %{} :Leaf (:at 1673972477520) (:by |rJoDgvdeG) (:text |q)
                                      |l $ %{} :Expr (:at 1673972715978) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1673972716561) (:by |rJoDgvdeG) (:text |let)
                                          |L $ %{} :Expr (:at 1673972716784) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1673972716908) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1673972720133) (:by |rJoDgvdeG) (:text |p-next)
                                                  |b $ %{} :Expr (:at 1673972720387) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1673972720748) (:by |rJoDgvdeG) (:text |inc)
                                                      |b $ %{} :Leaf (:at 1673972721146) (:by |rJoDgvdeG) (:text |p)
                                          |T $ %{} :Expr (:at 1673972537874) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1673972538676) (:by |rJoDgvdeG) (:text |if)
                                              |b $ %{} :Expr (:at 1673972542469) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1673973135664) (:by |rJoDgvdeG) (:text |&<)
                                                  |b $ %{} :Leaf (:at 1673972723322) (:by |rJoDgvdeG) (:text |p-next)
                                                  |h $ %{} :Leaf (:at 1673972548854) (:by |rJoDgvdeG) (:text |last-pos)
                                              |h $ %{} :Expr (:at 1673972553006) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1673972556221) (:by |rJoDgvdeG) (:text |recur)
                                                  |a $ %{} :Leaf (:at 1673972732033) (:by |rJoDgvdeG) (:text |p-next)
                                                  |g $ %{} :Expr (:at 1673972733745) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1673972734124) (:by |rJoDgvdeG) (:text |inc)
                                                      |b $ %{} :Leaf (:at 1673972735310) (:by |rJoDgvdeG) (:text |p-next)
                                              |l $ %{} :Leaf (:at 1673973027284) (:by |rJoDgvdeG) (:text |false)
        |find-children-diffs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-children-diffs)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                  |b $ %{} :Leaf (:at 1612023365031) (:by |rJoDgvdeG) (:text |coord)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |index)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                  |r $ %{} :Leaf (:at 1622299170015) (:by |rJoDgvdeG) (:text |js/console.log)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||diff children:")
                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                  |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |index)
                  |yT $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                  |yj $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
              |x $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |empty?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |empty?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |cond)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |D $ %{} :Expr (:at 1612025174374) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612025178746) (:by |rJoDgvdeG) (:text |pair)
                                      |j $ %{} :Expr (:at 1612025186047) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612025188058) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1612025192271) (:by |rJoDgvdeG) (:text |new-children)
                                  |L $ %{} :Expr (:at 1612025193407) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612025193974) (:by |rJoDgvdeG) (:text |k)
                                      |j $ %{} :Expr (:at 1612025194591) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612025195997) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1612025196697) (:by |rJoDgvdeG) (:text |pair)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                                      |j $ %{} :Expr (:at 1612025199224) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612025200116) (:by |rJoDgvdeG) (:text |last)
                                          |j $ %{} :Leaf (:at 1612025201965) (:by |rJoDgvdeG) (:text |pair)
                                  |j $ %{} :Expr (:at 1612062320535) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612062322584) (:by |rJoDgvdeG) (:text |new-coord)
                                      |j $ %{} :Expr (:at 1612062325825) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612062325825) (:by |rJoDgvdeG) (:text |conj)
                                          |j $ %{} :Leaf (:at 1612062325825) (:by |rJoDgvdeG) (:text |coord)
                                          |r $ %{} :Leaf (:at 1612062325825) (:by |rJoDgvdeG) (:text |k)
                              |r $ %{} :Expr (:at 1689525352502) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689525354188) (:by |rJoDgvdeG) (:text |collect!)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689525355594) (:by |rJoDgvdeG) (:text |::)
                                      |j $ %{} :Leaf (:at 1689525357427) (:by |rJoDgvdeG) (:text |:append-element)
                                      |n $ %{} :Leaf (:at 1612062328753) (:by |rJoDgvdeG) (:text |new-coord)
                                      |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                      |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                              |t $ %{} :Expr (:at 1571582690804) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571582959786) (:by |rJoDgvdeG) (:text |collect-mounting)
                                  |j $ %{} :Leaf (:at 1571582690804) (:by |rJoDgvdeG) (:text |collect!)
                                  |n $ %{} :Leaf (:at 1612108442121) (:by |rJoDgvdeG) (:text |coord)
                                  |r $ %{} :Expr (:at 1572524606642) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1572524607706) (:by |rJoDgvdeG) (:text |conj)
                                      |T $ %{} :Leaf (:at 1571582690804) (:by |rJoDgvdeG) (:text |n-coord)
                                      |j $ %{} :Leaf (:at 1572524609158) (:by |rJoDgvdeG) (:text |index)
                                  |v $ %{} :Leaf (:at 1571582690804) (:by |rJoDgvdeG) (:text |element)
                                  |x $ %{} :Leaf (:at 1572885082770) (:by |rJoDgvdeG) (:text |true)
                              |v $ %{} :Expr (:at 1571548137034) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571548137034) (:by |rJoDgvdeG) (:text |recur)
                                  |j $ %{} :Leaf (:at 1571548137034) (:by |rJoDgvdeG) (:text |collect!)
                                  |n $ %{} :Leaf (:at 1612335825713) (:by |rJoDgvdeG) (:text |coord)
                                  |r $ %{} :Leaf (:at 1571548137034) (:by |rJoDgvdeG) (:text |n-coord)
                                  |v $ %{} :Expr (:at 1571548137034) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571548137034) (:by |rJoDgvdeG) (:text |inc)
                                      |j $ %{} :Leaf (:at 1571548137034) (:by |rJoDgvdeG) (:text |index)
                                  |x $ %{} :Expr (:at 1571548137034) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571548137034) (:by |rJoDgvdeG) (:text |[])
                                  |y $ %{} :Expr (:at 1571548137034) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571548137034) (:by |rJoDgvdeG) (:text |rest)
                                      |j $ %{} :Leaf (:at 1571548137034) (:by |rJoDgvdeG) (:text |new-children)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                          |j $ %{} :Expr (:at 1571548192525) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1612025266216) (:by |rJoDgvdeG) (:text |let)
                              |L $ %{} :Expr (:at 1612025266596) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1612025266924) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612025269824) (:by |rJoDgvdeG) (:text |pair)
                                      |j $ %{} :Expr (:at 1612025270344) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612025273923) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1612025277904) (:by |rJoDgvdeG) (:text |old-children)
                                  |b $ %{} :Expr (:at 1612062358633) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612062359010) (:by |rJoDgvdeG) (:text |k)
                                      |j $ %{} :Expr (:at 1612062359548) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612062360862) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1612062363840) (:by |rJoDgvdeG) (:text |pair)
                                  |j $ %{} :Expr (:at 1612062355083) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612062357602) (:by |rJoDgvdeG) (:text |new-coord)
                                      |j $ %{} :Expr (:at 1612062365065) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612062365897) (:by |rJoDgvdeG) (:text |conj)
                                          |j $ %{} :Leaf (:at 1612062366748) (:by |rJoDgvdeG) (:text |coord)
                                          |r $ %{} :Leaf (:at 1612062368144) (:by |rJoDgvdeG) (:text |k)
                                  |r $ %{} :Expr (:at 1612062403591) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612062411679) (:by |rJoDgvdeG) (:text |new-n-coord)
                                      |j $ %{} :Expr (:at 1612062412522) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612062413340) (:by |rJoDgvdeG) (:text |conj)
                                          |j $ %{} :Leaf (:at 1612062415182) (:by |rJoDgvdeG) (:text |n-coord)
                                          |r $ %{} :Leaf (:at 1612062415897) (:by |rJoDgvdeG) (:text |index)
                              |T $ %{} :Expr (:at 1571582695972) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571582962009) (:by |rJoDgvdeG) (:text |collect-unmounting)
                                  |j $ %{} :Leaf (:at 1571582702644) (:by |rJoDgvdeG) (:text |collect!)
                                  |n $ %{} :Leaf (:at 1612108500678) (:by |rJoDgvdeG) (:text |coord)
                                  |r $ %{} :Leaf (:at 1612062421205) (:by |rJoDgvdeG) (:text |new-n-coord)
                                  |v $ %{} :Expr (:at 1571582717267) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612025296715) (:by |rJoDgvdeG) (:text |last)
                                      |j $ %{} :Leaf (:at 1612025297421) (:by |rJoDgvdeG) (:text |pair)
                                  |x $ %{} :Leaf (:at 1572885372123) (:by |rJoDgvdeG) (:text |true)
                              |j $ %{} :Expr (:at 1689525363909) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689525364422) (:by |rJoDgvdeG) (:text |collect!)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689525363369) (:by |rJoDgvdeG) (:text |::)
                                      |j $ %{} :Leaf (:at 1689525367406) (:by |rJoDgvdeG) (:text |:rm-element)
                                      |n $ %{} :Leaf (:at 1612062373016) (:by |rJoDgvdeG) (:text |new-coord)
                                      |q $ %{} :Leaf (:at 1612062427514) (:by |rJoDgvdeG) (:text |new-n-coord)
                                      |s $ %{} :Leaf (:at 1515769562002) (:by |root) (:text |nil)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                  |n $ %{} :Leaf (:at 1612023417017) (:by |rJoDgvdeG) (:text |coord)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |index)
                                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                                  |y $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |[])
                      |x $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610203061640) (:by |rJoDgvdeG) (:text |true)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-keys)
                                      |j $ %{} :Expr (:at 1619541404659) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1619541406274) (:by |rJoDgvdeG) (:text |->)
                                          |L $ %{} :Leaf (:at 1619541411642) (:by |rJoDgvdeG) (:text |old-children)
                                          |P $ %{} :Expr (:at 1619541416988) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1619541416988) (:by |rJoDgvdeG) (:text |take)
                                              |j $ %{} :Leaf (:at 1619541416988) (:by |rJoDgvdeG) (:text |16)
                                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |map)
                                              |r $ %{} :Leaf (:at 1619541399383) (:by |rJoDgvdeG) (:text |first)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-keys)
                                      |j $ %{} :Expr (:at 1619541420704) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1619541421564) (:by |rJoDgvdeG) (:text |->)
                                          |L $ %{} :Leaf (:at 1619541422275) (:by |rJoDgvdeG) (:text |new-children)
                                          |P $ %{} :Expr (:at 1619541431054) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1619541431054) (:by |rJoDgvdeG) (:text |take)
                                              |j $ %{} :Leaf (:at 1619541431054) (:by |rJoDgvdeG) (:text |16)
                                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |map)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x1)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-keys)
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |y1)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-keys)
                                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |match-x1)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
                                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x1)
                                  |y $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |match-y1)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
                                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |y1)
                                  |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x1-remains?)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610212020126) (:by |rJoDgvdeG) (:text |any?)
                                          |b $ %{} :Leaf (:at 1619541438931) (:by |rJoDgvdeG) (:text |new-keys)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |match-x1)
                                  |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |y1-existed?)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610212022538) (:by |rJoDgvdeG) (:text |any?)
                                          |b $ %{} :Leaf (:at 1619541441434) (:by |rJoDgvdeG) (:text |old-keys)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |match-y1)
                                  |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                                  |yv $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
                              |n $ %{} :Expr (:at 1628272966514) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1628272967489) (:by |rJoDgvdeG) (:text |if)
                                  |j $ %{} :Expr (:at 1628272975314) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1628272976631) (:by |rJoDgvdeG) (:text |nil?)
                                      |j $ %{} :Leaf (:at 1628272978646) (:by |rJoDgvdeG) (:text |y1)
                                  |r $ %{} :Expr (:at 1628272980058) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1628273008161) (:by |rJoDgvdeG) (:text |js/console.warn)
                                      |j $ %{} :Leaf (:at 1628272991062) (:by |rJoDgvdeG) (:text "|\"nil key is bad in Respo")
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                                  |r $ %{} :Leaf (:at 1551287512397) (:by |rJoDgvdeG) (:text "|\"compare:")
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x1)
                                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-keys)
                                  |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x1-remains?)
                                  |yT $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |y1)
                                  |yj $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |y1-existed?)
                                  |yr $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-keys)
                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |cond)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1705598241309) (:by |rJoDgvdeG) (:text |&=)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x1)
                                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |y1)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-element)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1572885693960) (:by |rJoDgvdeG) (:text |val-of-first)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1572885697500) (:by |rJoDgvdeG) (:text |val-of-first)
                                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-element-diffs)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                              |n $ %{} :Expr (:at 1612023425463) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612023428348) (:by |rJoDgvdeG) (:text |conj)
                                                  |j $ %{} :Leaf (:at 1612023431556) (:by |rJoDgvdeG) (:text |coord)
                                                  |r $ %{} :Leaf (:at 1612025356927) (:by |rJoDgvdeG) (:text |x1)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |conj)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |index)
                                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-element)
                                              |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
                                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                              |n $ %{} :Leaf (:at 1612023435023) (:by |rJoDgvdeG) (:text |coord)
                                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |inc)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |index)
                                              |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                              |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x1-remains?)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |y1-existed?)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612025550498) (:by |rJoDgvdeG) (:text |let)
                                          |b $ %{} :Expr (:at 1612025552028) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1612025552028) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612025552028) (:by |rJoDgvdeG) (:text |pair)
                                                  |j $ %{} :Expr (:at 1612025552028) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612025552028) (:by |rJoDgvdeG) (:text |first)
                                                      |j $ %{} :Leaf (:at 1612025552028) (:by |rJoDgvdeG) (:text |new-children)
                                              |j $ %{} :Expr (:at 1612025552028) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612025552028) (:by |rJoDgvdeG) (:text |k)
                                                  |j $ %{} :Expr (:at 1612025552028) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612025552028) (:by |rJoDgvdeG) (:text |first)
                                                      |j $ %{} :Leaf (:at 1612025552028) (:by |rJoDgvdeG) (:text |pair)
                                              |r $ %{} :Expr (:at 1612025552028) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612025552028) (:by |rJoDgvdeG) (:text |element)
                                                  |j $ %{} :Expr (:at 1612025552028) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612025552028) (:by |rJoDgvdeG) (:text |last)
                                                      |j $ %{} :Leaf (:at 1612025552028) (:by |rJoDgvdeG) (:text |pair)
                                              |v $ %{} :Expr (:at 1612108572638) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612108579302) (:by |rJoDgvdeG) (:text |new-coord)
                                                  |j $ %{} :Expr (:at 1612108581739) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612108581739) (:by |rJoDgvdeG) (:text |conj)
                                                      |j $ %{} :Leaf (:at 1612108581739) (:by |rJoDgvdeG) (:text |coord)
                                                      |r $ %{} :Leaf (:at 1612108581739) (:by |rJoDgvdeG) (:text |k)
                                              |x $ %{} :Expr (:at 1612108590676) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612108594659) (:by |rJoDgvdeG) (:text |new-n-coord)
                                                  |j $ %{} :Expr (:at 1612108597590) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612108597590) (:by |rJoDgvdeG) (:text |conj)
                                                      |j $ %{} :Leaf (:at 1612108597590) (:by |rJoDgvdeG) (:text |n-coord)
                                                      |r $ %{} :Leaf (:at 1612108597590) (:by |rJoDgvdeG) (:text |index)
                                          |j $ %{} :Expr (:at 1689525372007) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1689525372502) (:by |rJoDgvdeG) (:text |collect!)
                                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1689525374045) (:by |rJoDgvdeG) (:text |::)
                                                  |j $ %{} :Leaf (:at 1689525376450) (:by |rJoDgvdeG) (:text |:add-element)
                                                  |n $ %{} :Leaf (:at 1612108585589) (:by |rJoDgvdeG) (:text |new-coord)
                                                  |q $ %{} :Leaf (:at 1612108601257) (:by |rJoDgvdeG) (:text |new-n-coord)
                                                  |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                                          |n $ %{} :Expr (:at 1571582758137) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1571582965891) (:by |rJoDgvdeG) (:text |collect-mounting)
                                              |j $ %{} :Leaf (:at 1571582764523) (:by |rJoDgvdeG) (:text |collect!)
                                              |n $ %{} :Leaf (:at 1612108609794) (:by |rJoDgvdeG) (:text |coord)
                                              |r $ %{} :Leaf (:at 1612108604300) (:by |rJoDgvdeG) (:text |new-n-coord)
                                              |v $ %{} :Expr (:at 1571582780555) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1572885703161) (:by |rJoDgvdeG) (:text |val-of-first)
                                                  |j $ %{} :Leaf (:at 1571582780555) (:by |rJoDgvdeG) (:text |new-children)
                                              |x $ %{} :Leaf (:at 1572885088913) (:by |rJoDgvdeG) (:text |true)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                              |n $ %{} :Leaf (:at 1612023458006) (:by |rJoDgvdeG) (:text |coord)
                                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |inc)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |index)
                                              |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                                              |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x1-remains?)
                                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |y1-existed?)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612025398146) (:by |rJoDgvdeG) (:text |let)
                                          |X $ %{} :Expr (:at 1612025398467) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1612025399519) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612025400873) (:by |rJoDgvdeG) (:text |pair)
                                                  |j $ %{} :Expr (:at 1612025401472) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612025402337) (:by |rJoDgvdeG) (:text |first)
                                                      |j $ %{} :Leaf (:at 1612025407147) (:by |rJoDgvdeG) (:text |old-children)
                                              |j $ %{} :Expr (:at 1612025408406) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612025410265) (:by |rJoDgvdeG) (:text |k)
                                                  |j $ %{} :Expr (:at 1612025413286) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612025414900) (:by |rJoDgvdeG) (:text |first)
                                                      |j $ %{} :Leaf (:at 1612025415554) (:by |rJoDgvdeG) (:text |pair)
                                              |r $ %{} :Expr (:at 1612108617842) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612108620663) (:by |rJoDgvdeG) (:text |new-coord)
                                                  |j $ %{} :Expr (:at 1612108623039) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612108623039) (:by |rJoDgvdeG) (:text |conj)
                                                      |j $ %{} :Leaf (:at 1612108623039) (:by |rJoDgvdeG) (:text |coord)
                                                      |r $ %{} :Leaf (:at 1612108623039) (:by |rJoDgvdeG) (:text |k)
                                              |v $ %{} :Expr (:at 1612108632587) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612108635579) (:by |rJoDgvdeG) (:text |new-n-coord)
                                                  |j $ %{} :Expr (:at 1612108637588) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612108637588) (:by |rJoDgvdeG) (:text |conj)
                                                      |j $ %{} :Leaf (:at 1612108637588) (:by |rJoDgvdeG) (:text |n-coord)
                                                      |r $ %{} :Leaf (:at 1612108637588) (:by |rJoDgvdeG) (:text |index)
                                          |b $ %{} :Expr (:at 1571582787203) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1571583014487) (:by |rJoDgvdeG) (:text |collect-unmounting)
                                              |j $ %{} :Leaf (:at 1571582793600) (:by |rJoDgvdeG) (:text |collect!)
                                              |n $ %{} :Leaf (:at 1612108645833) (:by |rJoDgvdeG) (:text |coord)
                                              |r $ %{} :Leaf (:at 1612108639914) (:by |rJoDgvdeG) (:text |new-n-coord)
                                              |v $ %{} :Expr (:at 1571582795684) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612025424677) (:by |rJoDgvdeG) (:text |last)
                                                  |j $ %{} :Leaf (:at 1612025427157) (:by |rJoDgvdeG) (:text |pair)
                                              |x $ %{} :Leaf (:at 1572885377083) (:by |rJoDgvdeG) (:text |true)
                                          |j $ %{} :Expr (:at 1689525380146) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1689525380694) (:by |rJoDgvdeG) (:text |collect!)
                                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1689525382433) (:by |rJoDgvdeG) (:text |::)
                                                  |j $ %{} :Leaf (:at 1689525384300) (:by |rJoDgvdeG) (:text |:rm-element)
                                                  |n $ %{} :Leaf (:at 1612108630254) (:by |rJoDgvdeG) (:text |new-coord)
                                                  |q $ %{} :Leaf (:at 1612108642878) (:by |rJoDgvdeG) (:text |new-n-coord)
                                                  |s $ %{} :Leaf (:at 1515768863567) (:by |root) (:text |nil)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                              |n $ %{} :Leaf (:at 1612023469129) (:by |rJoDgvdeG) (:text |coord)
                                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |index)
                                              |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                              |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
                                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610203074111) (:by |rJoDgvdeG) (:text |true)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |xi)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1611302758907) (:by |rJoDgvdeG) (:text |index-of)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-keys)
                                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x1)
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |yi)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1611302764201) (:by |rJoDgvdeG) (:text |index-of)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-keys)
                                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |y1)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first-old-entry)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first-new-entry)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
                                              |y $ %{} :Expr (:at 1612761976827) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612761976827) (:by |rJoDgvdeG) (:text |new-n-coord)
                                                  |j $ %{} :Expr (:at 1612761976827) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612761976827) (:by |rJoDgvdeG) (:text |conj)
                                                      |j $ %{} :Leaf (:at 1612761976827) (:by |rJoDgvdeG) (:text |n-coord)
                                                      |r $ %{} :Leaf (:at 1612761976827) (:by |rJoDgvdeG) (:text |index)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |println)
                                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||index:)
                                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |xi)
                                              |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |yi)
                                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1705598218297) (:by |rJoDgvdeG) (:text |&<=)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |xi)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |yi)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
                                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1572885715243) (:by |rJoDgvdeG) (:text |val-of-first)
                                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
                                                      |j $ %{} :Expr (:at 1612761988756) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1612761988756) (:by |rJoDgvdeG) (:text |new-coord)
                                                          |j $ %{} :Expr (:at 1612761988756) (:by |rJoDgvdeG)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1612761988756) (:by |rJoDgvdeG) (:text |conj)
                                                              |j $ %{} :Leaf (:at 1612761988756) (:by |rJoDgvdeG) (:text |coord)
                                                              |r $ %{} :Leaf (:at 1612761988756) (:by |rJoDgvdeG) (:text |y1)
                                                  |r $ %{} :Expr (:at 1689525386883) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1689525387972) (:by |rJoDgvdeG) (:text |collect!)
                                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1689525389385) (:by |rJoDgvdeG) (:text |::)
                                                          |j $ %{} :Leaf (:at 1689525391322) (:by |rJoDgvdeG) (:text |:add-element)
                                                          |n $ %{} :Leaf (:at 1612108747718) (:by |rJoDgvdeG) (:text |new-coord)
                                                          |q $ %{} :Leaf (:at 1612108766125) (:by |rJoDgvdeG) (:text |new-n-coord)
                                                          |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
                                                  |t $ %{} :Expr (:at 1571582828154) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1571582971249) (:by |rJoDgvdeG) (:text |collect-mounting)
                                                      |j $ %{} :Leaf (:at 1571582836852) (:by |rJoDgvdeG) (:text |collect!)
                                                      |n $ %{} :Leaf (:at 1612108753495) (:by |rJoDgvdeG) (:text |coord)
                                                      |r $ %{} :Leaf (:at 1612108770805) (:by |rJoDgvdeG) (:text |new-n-coord)
                                                      |v $ %{} :Leaf (:at 1612108794925) (:by |rJoDgvdeG) (:text |new-element)
                                                      |x $ %{} :Leaf (:at 1572885091618) (:by |rJoDgvdeG) (:text |true)
                                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                                      |n $ %{} :Leaf (:at 1612023476591) (:by |rJoDgvdeG) (:text |coord)
                                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |inc)
                                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |index)
                                                      |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                                                      |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
                                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                                                  |b $ %{} :Expr (:at 1571582848346) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1571582973650) (:by |rJoDgvdeG) (:text |collect-unmounting)
                                                      |j $ %{} :Leaf (:at 1571582860668) (:by |rJoDgvdeG) (:text |collect!)
                                                      |n $ %{} :Leaf (:at 1612108814612) (:by |rJoDgvdeG) (:text |coord)
                                                      |r $ %{} :Leaf (:at 1612108826873) (:by |rJoDgvdeG) (:text |new-n-coord)
                                                      |v $ %{} :Expr (:at 1571582935452) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1572885723417) (:by |rJoDgvdeG) (:text |val-of-first)
                                                          |T $ %{} :Leaf (:at 1571583030401) (:by |rJoDgvdeG) (:text |old-children)
                                                      |x $ %{} :Leaf (:at 1572885367597) (:by |rJoDgvdeG) (:text |true)
                                                  |j $ %{} :Expr (:at 1689525394040) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1689525394990) (:by |rJoDgvdeG) (:text |collect!)
                                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1689525396222) (:by |rJoDgvdeG) (:text |::)
                                                          |j $ %{} :Leaf (:at 1689525398044) (:by |rJoDgvdeG) (:text |:rm-element)
                                                          |n $ %{} :Expr (:at 1612023502056) (:by |rJoDgvdeG)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1612023502056) (:by |rJoDgvdeG) (:text |conj)
                                                              |j $ %{} :Leaf (:at 1612023502056) (:by |rJoDgvdeG) (:text |coord)
                                                              |r $ %{} :Leaf (:at 1612025492444) (:by |rJoDgvdeG) (:text |x1)
                                                          |q $ %{} :Leaf (:at 1612108842893) (:by |rJoDgvdeG) (:text |new-n-coord)
                                                          |s $ %{} :Leaf (:at 1515768853136) (:by |root) (:text |nil)
                                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                                      |n $ %{} :Leaf (:at 1612023478583) (:by |rJoDgvdeG) (:text |coord)
                                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |index)
                                                      |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                                      |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
        |find-element-diffs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-element-diffs)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                  |b $ %{} :Leaf (:at 1612022542179) (:by |rJoDgvdeG) (:text |coord)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-tree)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-tree)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                  |r $ %{} :Leaf (:at 1622299164225) (:by |rJoDgvdeG) (:text |js/console.log)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||element diffing:")
                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                  |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-tree)
                  |yT $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-tree)
              |w $ %{} :Expr (:at 1612024396006) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1612061868577) (:by |rJoDgvdeG) (:text |;)
                  |T $ %{} :Leaf (:at 1612024397800) (:by |rJoDgvdeG) (:text |echo)
                  |j $ %{} :Leaf (:at 1612024401156) (:by |rJoDgvdeG) (:text "|\"element coord")
                  |r $ %{} :Leaf (:at 1612024402352) (:by |rJoDgvdeG) (:text |coord)
              |x $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |cond)
                  |b $ %{} :Expr (:at 1571578648899) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571578647700) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571578647700) (:by |rJoDgvdeG) (:text |identical?)
                          |j $ %{} :Leaf (:at 1571578647700) (:by |rJoDgvdeG) (:text |old-tree)
                          |r $ %{} :Leaf (:at 1571578647700) (:by |rJoDgvdeG) (:text |new-tree)
                      |j $ %{} :Leaf (:at 1571578649980) (:by |rJoDgvdeG) (:text |nil)
                  |f $ %{} :Expr (:at 1571579214740) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571579216395) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571579216930) (:by |rJoDgvdeG) (:text |and)
                          |j $ %{} :Expr (:at 1571579217869) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571579219233) (:by |rJoDgvdeG) (:text |component?)
                              |j $ %{} :Leaf (:at 1571579221885) (:by |rJoDgvdeG) (:text |old-tree)
                          |r $ %{} :Expr (:at 1571579222419) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571579226141) (:by |rJoDgvdeG) (:text |component?)
                              |j $ %{} :Leaf (:at 1571579227445) (:by |rJoDgvdeG) (:text |new-tree)
                      |j $ %{} :Expr (:at 1612022623788) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1612022627781) (:by |rJoDgvdeG) (:text |let)
                          |L $ %{} :Expr (:at 1612022628177) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1612022628407) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612022631631) (:by |rJoDgvdeG) (:text |next-coord)
                                  |j $ %{} :Expr (:at 1612022631964) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612022633268) (:by |rJoDgvdeG) (:text |conj)
                                      |j $ %{} :Leaf (:at 1612022635545) (:by |rJoDgvdeG) (:text |coord)
                                      |r $ %{} :Expr (:at 1612022636639) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1645978459519) (:by |rJoDgvdeG) (:text |&record:get)
                                          |j $ %{} :Leaf (:at 1612022641538) (:by |rJoDgvdeG) (:text |new-tree)
                                          |n $ %{} :Leaf (:at 1645978362602) (:by |rJoDgvdeG) (:text |:name)
                          |T $ %{} :Expr (:at 1571579229992) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571579232236) (:by |rJoDgvdeG) (:text |if)
                              |j $ %{} :Expr (:at 1571579232556) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571579232718) (:by |rJoDgvdeG) (:text |=)
                                  |j $ %{} :Expr (:at 1571579242759) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1645978462155) (:by |rJoDgvdeG) (:text |&record:get)
                                      |j $ %{} :Leaf (:at 1571579247947) (:by |rJoDgvdeG) (:text |old-tree)
                                      |n $ %{} :Leaf (:at 1645978373900) (:by |rJoDgvdeG) (:text |:name)
                                  |r $ %{} :Expr (:at 1571579248311) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1645978460799) (:by |rJoDgvdeG) (:text |&record:get)
                                      |j $ %{} :Leaf (:at 1571579251251) (:by |rJoDgvdeG) (:text |new-tree)
                                      |n $ %{} :Leaf (:at 1645978368081) (:by |rJoDgvdeG) (:text |:name)
                              |r $ %{} :Expr (:at 1571579279318) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571579280813) (:by |rJoDgvdeG) (:text |do)
                                  |b $ %{} :Expr (:at 1572153017092) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572153017092) (:by |rJoDgvdeG) (:text |collect-updating)
                                      |j $ %{} :Leaf (:at 1572153017092) (:by |rJoDgvdeG) (:text |collect!)
                                      |n $ %{} :Leaf (:at 1572153590044) (:by |rJoDgvdeG) (:text |:before-update)
                                      |p $ %{} :Leaf (:at 1612108005509) (:by |rJoDgvdeG) (:text |coord)
                                      |r $ %{} :Leaf (:at 1572153017092) (:by |rJoDgvdeG) (:text |n-coord)
                                      |v $ %{} :Leaf (:at 1572153017092) (:by |rJoDgvdeG) (:text |old-tree)
                                      |x $ %{} :Leaf (:at 1572153017092) (:by |rJoDgvdeG) (:text |new-tree)
                                  |j $ %{} :Expr (:at 1571579281503) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571579680435) (:by |rJoDgvdeG) (:text |find-element-diffs)
                                      |j $ %{} :Leaf (:at 1571579286484) (:by |rJoDgvdeG) (:text |collect!)
                                      |n $ %{} :Leaf (:at 1612022654966) (:by |rJoDgvdeG) (:text |next-coord)
                                      |r $ %{} :Leaf (:at 1571579700711) (:by |rJoDgvdeG) (:text |n-coord)
                                      |v $ %{} :Expr (:at 1571579290116) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1571579303679) (:by |rJoDgvdeG) (:text |:tree)
                                          |j $ %{} :Leaf (:at 1571579294951) (:by |rJoDgvdeG) (:text |old-tree)
                                      |x $ %{} :Expr (:at 1571579296256) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1571579300219) (:by |rJoDgvdeG) (:text |:tree)
                                          |j $ %{} :Leaf (:at 1571579298455) (:by |rJoDgvdeG) (:text |new-tree)
                                  |v $ %{} :Expr (:at 1571584416898) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571584423843) (:by |rJoDgvdeG) (:text |collect-updating)
                                      |j $ %{} :Leaf (:at 1571584430949) (:by |rJoDgvdeG) (:text |collect!)
                                      |n $ %{} :Leaf (:at 1572153593073) (:by |rJoDgvdeG) (:text |:update)
                                      |p $ %{} :Leaf (:at 1612108008281) (:by |rJoDgvdeG) (:text |coord)
                                      |r $ %{} :Leaf (:at 1571584432754) (:by |rJoDgvdeG) (:text |n-coord)
                                      |v $ %{} :Leaf (:at 1571584448513) (:by |rJoDgvdeG) (:text |old-tree)
                                      |x $ %{} :Leaf (:at 1571584450268) (:by |rJoDgvdeG) (:text |new-tree)
                              |v $ %{} :Expr (:at 1571645905707) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571645906812) (:by |root) (:text |do)
                                  |b $ %{} :Expr (:at 1571645922814) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571645922814) (:by |root) (:text |collect-unmounting)
                                      |j $ %{} :Leaf (:at 1571645922814) (:by |root) (:text |collect!)
                                      |n $ %{} :Leaf (:at 1612108019111) (:by |rJoDgvdeG) (:text |coord)
                                      |r $ %{} :Leaf (:at 1571645922814) (:by |root) (:text |n-coord)
                                      |v $ %{} :Leaf (:at 1571645922814) (:by |root) (:text |old-tree)
                                      |x $ %{} :Leaf (:at 1572885328550) (:by |rJoDgvdeG) (:text |true)
                                  |f $ %{} :Expr (:at 1571645935128) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571645935128) (:by |root) (:text |find-element-diffs)
                                      |j $ %{} :Leaf (:at 1571645935128) (:by |root) (:text |collect!)
                                      |n $ %{} :Leaf (:at 1612022784249) (:by |rJoDgvdeG) (:text |next-coord)
                                      |r $ %{} :Leaf (:at 1571645935128) (:by |root) (:text |n-coord)
                                      |v $ %{} :Expr (:at 1571645935128) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1571645935128) (:by |root) (:text |:tree)
                                          |j $ %{} :Leaf (:at 1571645935128) (:by |root) (:text |old-tree)
                                      |x $ %{} :Expr (:at 1571645935128) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1571645935128) (:by |root) (:text |:tree)
                                          |j $ %{} :Leaf (:at 1571645935128) (:by |root) (:text |new-tree)
                                  |j $ %{} :Expr (:at 1571645912685) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571645912685) (:by |root) (:text |collect-mounting)
                                      |j $ %{} :Leaf (:at 1571645912685) (:by |root) (:text |collect!)
                                      |n $ %{} :Leaf (:at 1612108015596) (:by |rJoDgvdeG) (:text |coord)
                                      |r $ %{} :Leaf (:at 1571645912685) (:by |root) (:text |n-coord)
                                      |v $ %{} :Leaf (:at 1571645912685) (:by |root) (:text |new-tree)
                                      |x $ %{} :Leaf (:at 1572885169032) (:by |rJoDgvdeG) (:text |true)
                  |h $ %{} :Expr (:at 1571579369166) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571579412895) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571579413711) (:by |rJoDgvdeG) (:text |and)
                          |j $ %{} :Expr (:at 1571579420089) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571579418442) (:by |rJoDgvdeG) (:text |component?)
                              |j $ %{} :Leaf (:at 1571579419753) (:by |rJoDgvdeG) (:text |old-tree)
                          |r $ %{} :Expr (:at 1571579423899) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571579436539) (:by |rJoDgvdeG) (:text |element?)
                              |j $ %{} :Leaf (:at 1571579428896) (:by |rJoDgvdeG) (:text |new-tree)
                      |j $ %{} :Expr (:at 1571579509807) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1571579510406) (:by |rJoDgvdeG) (:text |do)
                          |T $ %{} :Expr (:at 1571579453096) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571582992163) (:by |rJoDgvdeG) (:text |collect-unmounting)
                              |j $ %{} :Leaf (:at 1571579471444) (:by |rJoDgvdeG) (:text |collect!)
                              |n $ %{} :Expr (:at 1612022843332) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1612024201074) (:by |rJoDgvdeG) (:text |conj)
                                  |T $ %{} :Leaf (:at 1612022794236) (:by |rJoDgvdeG) (:text |coord)
                                  |j $ %{} :Expr (:at 1612022846431) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1645978467761) (:by |rJoDgvdeG) (:text |&record:get)
                                      |j $ %{} :Leaf (:at 1612022848964) (:by |rJoDgvdeG) (:text |old-tree)
                                      |n $ %{} :Leaf (:at 1645978379194) (:by |rJoDgvdeG) (:text |:name)
                              |r $ %{} :Leaf (:at 1571579473607) (:by |rJoDgvdeG) (:text |n-coord)
                              |v $ %{} :Leaf (:at 1571579477694) (:by |rJoDgvdeG) (:text |old-tree)
                              |x $ %{} :Leaf (:at 1572885332862) (:by |rJoDgvdeG) (:text |true)
                          |j $ %{} :Expr (:at 1571579515810) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571579520704) (:by |rJoDgvdeG) (:text |recur)
                              |j $ %{} :Leaf (:at 1571579524293) (:by |rJoDgvdeG) (:text |collect!)
                              |n $ %{} :Leaf (:at 1612022851942) (:by |rJoDgvdeG) (:text |coord)
                              |r $ %{} :Leaf (:at 1571579527828) (:by |rJoDgvdeG) (:text |n-coord)
                              |v $ %{} :Expr (:at 1571579529176) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571579531491) (:by |rJoDgvdeG) (:text |:tree)
                                  |j $ %{} :Leaf (:at 1571579533690) (:by |rJoDgvdeG) (:text |old-tree)
                              |x $ %{} :Leaf (:at 1571579535765) (:by |rJoDgvdeG) (:text |new-tree)
                  |i $ %{} :Expr (:at 1571579539020) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571579539532) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571579540135) (:by |rJoDgvdeG) (:text |and)
                          |j $ %{} :Expr (:at 1571579540339) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571579542913) (:by |rJoDgvdeG) (:text |element?)
                              |j $ %{} :Leaf (:at 1571579545433) (:by |rJoDgvdeG) (:text |old-tree)
                          |r $ %{} :Expr (:at 1571579546794) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571579548581) (:by |rJoDgvdeG) (:text |component?)
                              |j $ %{} :Leaf (:at 1571579550861) (:by |rJoDgvdeG) (:text |new-tree)
                      |j $ %{} :Expr (:at 1612022864884) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1612022866278) (:by |rJoDgvdeG) (:text |let)
                          |L $ %{} :Expr (:at 1612022866549) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1612022868446) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612022868212) (:by |rJoDgvdeG) (:text |new-coord)
                                  |j $ %{} :Expr (:at 1612022869545) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612022870348) (:by |rJoDgvdeG) (:text |conj)
                                      |j $ %{} :Leaf (:at 1612022872610) (:by |rJoDgvdeG) (:text |coord)
                                      |r $ %{} :Expr (:at 1612022873536) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1645978469762) (:by |rJoDgvdeG) (:text |&record:get)
                                          |j $ %{} :Leaf (:at 1612022876511) (:by |rJoDgvdeG) (:text |new-tree)
                                          |n $ %{} :Leaf (:at 1645978385066) (:by |rJoDgvdeG) (:text |:name)
                          |T $ %{} :Expr (:at 1571579552338) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571579552653) (:by |rJoDgvdeG) (:text |do)
                              |b $ %{} :Expr (:at 1571579593318) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571579608929) (:by |rJoDgvdeG) (:text |find-element-diffs)
                                  |j $ %{} :Leaf (:at 1571579615385) (:by |rJoDgvdeG) (:text |collect!)
                                  |n $ %{} :Leaf (:at 1612022860460) (:by |rJoDgvdeG) (:text |new-coord)
                                  |r $ %{} :Leaf (:at 1571579618284) (:by |rJoDgvdeG) (:text |n-coord)
                                  |v $ %{} :Leaf (:at 1571579630006) (:by |rJoDgvdeG) (:text |old-tree)
                                  |x $ %{} :Expr (:at 1571579630290) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571579631136) (:by |rJoDgvdeG) (:text |:tree)
                                      |j $ %{} :Leaf (:at 1571579632528) (:by |rJoDgvdeG) (:text |new-tree)
                              |j $ %{} :Expr (:at 1571579553262) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571579569709) (:by |rJoDgvdeG) (:text |collect-mounting)
                                  |j $ %{} :Leaf (:at 1571579568348) (:by |rJoDgvdeG) (:text |collect!)
                                  |n $ %{} :Leaf (:at 1612022891153) (:by |rJoDgvdeG) (:text |coord)
                                  |r $ %{} :Leaf (:at 1571579574796) (:by |rJoDgvdeG) (:text |n-coord)
                                  |v $ %{} :Leaf (:at 1571579592238) (:by |rJoDgvdeG) (:text |new-tree)
                                  |x $ %{} :Leaf (:at 1572885184484) (:by |rJoDgvdeG) (:text |true)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571589511575) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571589515036) (:by |rJoDgvdeG) (:text |and)
                          |j $ %{} :Expr (:at 1571589515289) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571589516447) (:by |rJoDgvdeG) (:text |element?)
                              |j $ %{} :Leaf (:at 1571589517833) (:by |rJoDgvdeG) (:text |old-tree)
                          |r $ %{} :Expr (:at 1571589518194) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571589520220) (:by |rJoDgvdeG) (:text |element?)
                              |j $ %{} :Leaf (:at 1571589521971) (:by |rJoDgvdeG) (:text |new-tree)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                          |j $ %{} :Expr (:at 1612108237928) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1643708967346) (:by |rJoDgvdeG) (:text |not=)
                              |j $ %{} :Expr (:at 1612108237928) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1645978471932) (:by |rJoDgvdeG) (:text |&record:get)
                                  |j $ %{} :Leaf (:at 1612108237928) (:by |rJoDgvdeG) (:text |old-tree)
                                  |n $ %{} :Leaf (:at 1645978393409) (:by |rJoDgvdeG) (:text |:name)
                              |r $ %{} :Expr (:at 1612108237928) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1645978473377) (:by |rJoDgvdeG) (:text |&record:get)
                                  |j $ %{} :Leaf (:at 1612108237928) (:by |rJoDgvdeG) (:text |new-tree)
                                  |n $ %{} :Leaf (:at 1645978390186) (:by |rJoDgvdeG) (:text |:name)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                              |j $ %{} :Expr (:at 1689525095765) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689525097588) (:by |rJoDgvdeG) (:text |collect!)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689525099160) (:by |rJoDgvdeG) (:text |::)
                                      |j $ %{} :Leaf (:at 1689525101513) (:by |rJoDgvdeG) (:text |:replace-element)
                                      |n $ %{} :Leaf (:at 1612022896784) (:by |rJoDgvdeG) (:text |coord)
                                      |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                      |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-tree)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-props-diffs)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                  |n $ %{} :Leaf (:at 1612022903939) (:by |rJoDgvdeG) (:text |coord)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1645978516488) (:by |rJoDgvdeG) (:text |&record:get)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-tree)
                                      |n $ %{} :Leaf (:at 1645978515519) (:by |rJoDgvdeG) (:text |:attrs)
                                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1645978520925) (:by |rJoDgvdeG) (:text |&record:get)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-tree)
                                      |n $ %{} :Leaf (:at 1645978519844) (:by |rJoDgvdeG) (:text |:attrs)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1645978474949) (:by |rJoDgvdeG) (:text |&record:get)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-tree)
                                              |n $ %{} :Leaf (:at 1645978400137) (:by |rJoDgvdeG) (:text |:style)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1645978476073) (:by |rJoDgvdeG) (:text |&record:get)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-tree)
                                              |n $ %{} :Leaf (:at 1645978397234) (:by |rJoDgvdeG) (:text |:style)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1643708970966) (:by |rJoDgvdeG) (:text |not=)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-style-diffs)
                                          |j $ %{} :Leaf (:at 1612023306195) (:by |rJoDgvdeG) (:text |collect!)
                                          |l $ %{} :Leaf (:at 1612023539016) (:by |rJoDgvdeG) (:text |coord)
                                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                          |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                                          |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                              |v $ %{} :Expr (:at 1612108375468) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1612108377301) (:by |rJoDgvdeG) (:text |let)
                                  |L $ %{} :Expr (:at 1612108383209) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1612108380442) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612108380442) (:by |rJoDgvdeG) (:text |old-events)
                                          |j $ %{} :Expr (:at 1612108380442) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612108380442) (:by |rJoDgvdeG) (:text |keys-non-nil)
                                              |j $ %{} :Expr (:at 1612108380442) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612108380442) (:by |rJoDgvdeG) (:text |either)
                                                  |j $ %{} :Expr (:at 1612108380442) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1645978526075) (:by |rJoDgvdeG) (:text |&record:get)
                                                      |j $ %{} :Leaf (:at 1612108380442) (:by |rJoDgvdeG) (:text |old-tree)
                                                      |n $ %{} :Leaf (:at 1645978525117) (:by |rJoDgvdeG) (:text |:event)
                                                  |r $ %{} :Expr (:at 1612108380442) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612108380442) (:by |rJoDgvdeG) (:text |{})
                                      |j $ %{} :Expr (:at 1612108388368) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612108388368) (:by |rJoDgvdeG) (:text |new-events)
                                          |j $ %{} :Expr (:at 1612108388368) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612108388368) (:by |rJoDgvdeG) (:text |keys-non-nil)
                                              |j $ %{} :Expr (:at 1612108388368) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612108388368) (:by |rJoDgvdeG) (:text |either)
                                                  |j $ %{} :Expr (:at 1612108388368) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1645978529011) (:by |rJoDgvdeG) (:text |&record:get)
                                                      |j $ %{} :Leaf (:at 1612108388368) (:by |rJoDgvdeG) (:text |new-tree)
                                                      |n $ %{} :Leaf (:at 1645978528313) (:by |rJoDgvdeG) (:text |:event)
                                                  |r $ %{} :Expr (:at 1612108388368) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1612108388368) (:by |rJoDgvdeG) (:text |{})
                                  |T $ %{} :Expr (:at 1612108389559) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1612108391136) (:by |rJoDgvdeG) (:text |when)
                                      |L $ %{} :Expr (:at 1612108392023) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1643708972589) (:by |rJoDgvdeG) (:text |not=)
                                          |j $ %{} :Leaf (:at 1612108394550) (:by |rJoDgvdeG) (:text |old-events)
                                          |r $ %{} :Leaf (:at 1612108396033) (:by |rJoDgvdeG) (:text |new-events)
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |added-events)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |difference)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-events)
                                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-events)
                                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |removed-events)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |difference)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-events)
                                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-events)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610211999382) (:by |rJoDgvdeG) (:text |&doseq)
                                              |j $ %{} :Expr (:at 1511710841172) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |added-events)
                                              |r $ %{} :Expr (:at 1689525115056) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1689525114103) (:by |rJoDgvdeG) (:text |collect!)
                                                  |b $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1689525112085) (:by |rJoDgvdeG) (:text |::)
                                                      |j $ %{} :Leaf (:at 1689525118318) (:by |rJoDgvdeG) (:text |:set-event)
                                                      |n $ %{} :Leaf (:at 1612023343415) (:by |rJoDgvdeG) (:text |coord)
                                                      |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                                      |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610212003787) (:by |rJoDgvdeG) (:text |&doseq)
                                              |j $ %{} :Expr (:at 1511710845572) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |removed-events)
                                              |r $ %{} :Expr (:at 1689525119829) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1689525121436) (:by |rJoDgvdeG) (:text |collect!)
                                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1689525123520) (:by |rJoDgvdeG) (:text |::)
                                                      |j $ %{} :Leaf (:at 1689525127430) (:by |rJoDgvdeG) (:text |:rm-event)
                                                      |n $ %{} :Leaf (:at 1612023540996) (:by |rJoDgvdeG) (:text |coord)
                                                      |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                                      |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                              |x $ %{} :Expr (:at 1612108274561) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1612108275324) (:by |rJoDgvdeG) (:text |let)
                                  |L $ %{} :Expr (:at 1612108275893) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1612108275893) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612108275893) (:by |rJoDgvdeG) (:text |old-children)
                                          |j $ %{} :Expr (:at 1612108275893) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1645978456694) (:by |rJoDgvdeG) (:text |&record:get)
                                              |j $ %{} :Leaf (:at 1612108275893) (:by |rJoDgvdeG) (:text |old-tree)
                                              |n $ %{} :Leaf (:at 1645978407724) (:by |rJoDgvdeG) (:text |:children)
                                      |j $ %{} :Expr (:at 1612108275893) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612108275893) (:by |rJoDgvdeG) (:text |new-children)
                                          |j $ %{} :Expr (:at 1612108275893) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1645978455719) (:by |rJoDgvdeG) (:text |&record:get)
                                              |j $ %{} :Leaf (:at 1612108275893) (:by |rJoDgvdeG) (:text |new-tree)
                                              |n $ %{} :Leaf (:at 1645978410819) (:by |rJoDgvdeG) (:text |:children)
                                  |P $ %{} :Expr (:at 1673973035030) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1673973035549) (:by |rJoDgvdeG) (:text |if)
                                      |T $ %{} :Expr (:at 1705598203069) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1705598203812) (:by |rJoDgvdeG) (:text |and)
                                          |L $ %{} :Leaf (:at 1705598204804) (:by |rJoDgvdeG) (:text |dev?)
                                          |T $ %{} :Expr (:at 1673971937448) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1673972169069) (:by |rJoDgvdeG) (:text |detect-keys-dup)
                                              |b $ %{} :Expr (:at 1673972188527) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1673972189941) (:by |rJoDgvdeG) (:text |map)
                                                  |T $ %{} :Leaf (:at 1673972172488) (:by |rJoDgvdeG) (:text |new-children)
                                                  |b $ %{} :Leaf (:at 1673972193234) (:by |rJoDgvdeG) (:text |first)
                                      |b $ %{} :Expr (:at 1673973036511) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1673973072516) (:by |rJoDgvdeG) (:text |js/console.error)
                                          |X $ %{} :Leaf (:at 1673973090489) (:by |rJoDgvdeG) (:text "|\"Parent that has dups")
                                          |b $ %{} :Leaf (:at 1673973050934) (:by |rJoDgvdeG) (:text |new-tree)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-children-diffs)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                      |n $ %{} :Leaf (:at 1612023543988) (:by |rJoDgvdeG) (:text |coord)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |0)
                                      |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-children)
                                      |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-children)
                  |x $ %{} :Expr (:at 1571589523056) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610203084320) (:by |rJoDgvdeG) (:text |true)
                      |j $ %{} :Expr (:at 1571589526796) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571589534169) (:by |rJoDgvdeG) (:text |js/console.warn)
                          |j $ %{} :Leaf (:at 1571589550969) (:by |rJoDgvdeG) (:text "|\"Diffing unknown params")
                          |r $ %{} :Leaf (:at 1571589568660) (:by |rJoDgvdeG) (:text |old-tree)
                          |v $ %{} :Leaf (:at 1571589570160) (:by |rJoDgvdeG) (:text |new-tree)
        |find-props-diffs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-props-diffs)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                  |b $ %{} :Leaf (:at 1612023275897) (:by |rJoDgvdeG) (:text |coord)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-props)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-props)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |L $ %{} :Leaf (:at 1612063772016) (:by |rJoDgvdeG) (:text |;)
                  |r $ %{} :Leaf (:at 1622299151166) (:by |rJoDgvdeG) (:text |js/console.log)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||find props:")
                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                  |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-props)
                  |yT $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-props)
                  |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |count)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-props)
                  |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |count)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-props)
              |x $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |empty?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-props)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |empty?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-props)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |cond)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                              |j $ %{} :Expr (:at 1689525439048) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689525439884) (:by |rJoDgvdeG) (:text |collect!)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689525442245) (:by |rJoDgvdeG) (:text |::)
                                      |j $ %{} :Leaf (:at 1689525444196) (:by |rJoDgvdeG) (:text |:add-prop)
                                      |n $ %{} :Leaf (:at 1612023278640) (:by |rJoDgvdeG) (:text |coord)
                                      |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                      |s $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-props)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                  |n $ %{} :Leaf (:at 1612023280676) (:by |rJoDgvdeG) (:text |coord)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-props)
                                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-props)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                              |j $ %{} :Expr (:at 1689525445546) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689525446045) (:by |rJoDgvdeG) (:text |collect!)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689525447237) (:by |rJoDgvdeG) (:text |::)
                                      |j $ %{} :Leaf (:at 1689525449039) (:by |rJoDgvdeG) (:text |:rm-prop)
                                      |n $ %{} :Leaf (:at 1612023287795) (:by |rJoDgvdeG) (:text |coord)
                                      |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                      |s $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612338177061) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-props)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                  |n $ %{} :Leaf (:at 1612023289130) (:by |rJoDgvdeG) (:text |coord)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-props)
                                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-props)
                      |x $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610203098048) (:by |rJoDgvdeG) (:text |true)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |n $ %{} :Expr (:at 1610028885607) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610028887117) (:by |rJoDgvdeG) (:text |old-pair)
                                      |j $ %{} :Expr (:at 1610028890612) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610028890612) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1610028890612) (:by |rJoDgvdeG) (:text |old-props)
                                  |p $ %{} :Expr (:at 1610028892208) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610028894541) (:by |rJoDgvdeG) (:text |new-pair)
                                      |j $ %{} :Expr (:at 1610028897585) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610028897585) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1610028897585) (:by |rJoDgvdeG) (:text |new-props)
                                  |q $ %{} :Expr (:at 1610028899485) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610028934342) (:by |rJoDgvdeG) (:text |old-k)
                                      |j $ %{} :Expr (:at 1610028934727) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610028935611) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1610028937927) (:by |rJoDgvdeG) (:text |old-pair)
                                  |qT $ %{} :Expr (:at 1610028899485) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610028944272) (:by |rJoDgvdeG) (:text |old-v)
                                      |j $ %{} :Expr (:at 1610028934727) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610028946583) (:by |rJoDgvdeG) (:text |last)
                                          |j $ %{} :Leaf (:at 1610028937927) (:by |rJoDgvdeG) (:text |old-pair)
                                  |qj $ %{} :Expr (:at 1610028950386) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610028951222) (:by |rJoDgvdeG) (:text |new-k)
                                      |j $ %{} :Expr (:at 1610028951990) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610028953512) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1610028956962) (:by |rJoDgvdeG) (:text |new-pair)
                                  |qr $ %{} :Expr (:at 1610028958012) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610028959014) (:by |rJoDgvdeG) (:text |new-v)
                                      |j $ %{} :Expr (:at 1610028959608) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610028960544) (:by |rJoDgvdeG) (:text |last)
                                          |j $ %{} :Leaf (:at 1610028961994) (:by |rJoDgvdeG) (:text |new-pair)
                                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-props)
                                  |y $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-props)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |;)
                                  |r $ %{} :Leaf (:at 1622299226791) (:by |rJoDgvdeG) (:text |js/console.log)
                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-k)
                                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-k)
                                  |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-v)
                                  |yT $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-v)
                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1643704311561) (:by |rJoDgvdeG) (:text |case-default)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647337375706) (:by |rJoDgvdeG) (:text |&compare)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-k)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-k)
                                  |n $ %{} :Expr (:at 1643704289088) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1705598060568) (:by |rJoDgvdeG) (:text |eprintln)
                                      |j $ %{} :Leaf (:at 1705598122070) (:by |rJoDgvdeG) (:text "|\"[Respo] unknown compare result for props keys")
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |-1)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                                          |j $ %{} :Expr (:at 1689525263197) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1689525264031) (:by |rJoDgvdeG) (:text |collect!)
                                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1689525265597) (:by |rJoDgvdeG) (:text |::)
                                                  |j $ %{} :Leaf (:at 1689525267698) (:by |rJoDgvdeG) (:text |:rm-prop)
                                                  |n $ %{} :Leaf (:at 1612023292019) (:by |rJoDgvdeG) (:text |coord)
                                                  |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                                  |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-k)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1689525272674) (:by |rJoDgvdeG) (:text |recur)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                              |n $ %{} :Leaf (:at 1612023293865) (:by |rJoDgvdeG) (:text |coord)
                                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                              |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-props)
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |1)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                                          |j $ %{} :Expr (:at 1689525276798) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1689525277798) (:by |rJoDgvdeG) (:text |collect!)
                                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1689525279382) (:by |rJoDgvdeG) (:text |::)
                                                  |j $ %{} :Leaf (:at 1689525281908) (:by |rJoDgvdeG) (:text |:add-prop)
                                                  |n $ %{} :Leaf (:at 1612023296106) (:by |rJoDgvdeG) (:text |coord)
                                                  |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                                  |s $ %{} :Leaf (:at 1612063557247) (:by |rJoDgvdeG) (:text |new-pair)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                              |n $ %{} :Leaf (:at 1612023297662) (:by |rJoDgvdeG) (:text |coord)
                                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-props)
                                              |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
                                  |x $ %{} :Expr (:at 1610028978091) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1610028980201) (:by |rJoDgvdeG) (:text |0)
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1643708953061) (:by |rJoDgvdeG) (:text |not=)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-v)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-v)
                                              |r $ %{} :Expr (:at 1689525287592) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1689525288198) (:by |rJoDgvdeG) (:text |collect!)
                                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1689525284907) (:by |rJoDgvdeG) (:text |::)
                                                      |j $ %{} :Leaf (:at 1689525286883) (:by |rJoDgvdeG) (:text |:replace-prop)
                                                      |n $ %{} :Leaf (:at 1612023977746) (:by |rJoDgvdeG) (:text |coord)
                                                      |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                                      |s $ %{} :Leaf (:at 1612063560645) (:by |rJoDgvdeG) (:text |new-pair)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                              |n $ %{} :Leaf (:at 1612023298913) (:by |rJoDgvdeG) (:text |coord)
                                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                                              |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                              |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
        |find-style-diffs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-style-diffs)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                  |b $ %{} :Leaf (:at 1612023311303) (:by |rJoDgvdeG) (:text |c-coord)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |empty?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |empty?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |identical?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |cond)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |follows)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                                  |r $ %{} :Expr (:at 1689525304621) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1689525306169) (:by |rJoDgvdeG) (:text |collect!)
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1689525307737) (:by |rJoDgvdeG) (:text |::)
                                          |j $ %{} :Leaf (:at 1689525309937) (:by |rJoDgvdeG) (:text |:add-style)
                                          |n $ %{} :Leaf (:at 1612023314622) (:by |rJoDgvdeG) (:text |c-coord)
                                          |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                          |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                      |n $ %{} :Leaf (:at 1612023315908) (:by |rJoDgvdeG) (:text |c-coord)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                                      |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |follows)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |was-empty?)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |now-empty?)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |follows)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                                  |r $ %{} :Expr (:at 1689525311785) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1689525312376) (:by |rJoDgvdeG) (:text |collect!)
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1689525314567) (:by |rJoDgvdeG) (:text |::)
                                          |j $ %{} :Leaf (:at 1689525316810) (:by |rJoDgvdeG) (:text |:rm-style)
                                          |n $ %{} :Leaf (:at 1612023318220) (:by |rJoDgvdeG) (:text |c-coord)
                                          |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                          |s $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610611986331) (:by |rJoDgvdeG) (:text |first)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                      |n $ %{} :Leaf (:at 1612023319647) (:by |rJoDgvdeG) (:text |c-coord)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |follows)
                                      |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                          |x $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610203103040) (:by |rJoDgvdeG) (:text |true)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-entry)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-entry)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rest)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1643704357282) (:by |rJoDgvdeG) (:text |case-default)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1647337412864) (:by |rJoDgvdeG) (:text |&compare)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610611988946) (:by |rJoDgvdeG) (:text |first)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-entry)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610611989976) (:by |rJoDgvdeG) (:text |first)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-entry)
                                      |n $ %{} :Expr (:at 1643704358751) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1705598101507) (:by |rJoDgvdeG) (:text |eprintln)
                                          |j $ %{} :Leaf (:at 1647337429008) (:by |rJoDgvdeG) (:text "|\"[Respo] unknown compare result for style keys")
                                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |-1)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                                              |j $ %{} :Expr (:at 1689525318585) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1689525319215) (:by |rJoDgvdeG) (:text |collect!)
                                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1689525320675) (:by |rJoDgvdeG) (:text |::)
                                                      |j $ %{} :Leaf (:at 1689525322533) (:by |rJoDgvdeG) (:text |:rm-style)
                                                      |n $ %{} :Leaf (:at 1612023321472) (:by |rJoDgvdeG) (:text |c-coord)
                                                      |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                                      |s $ %{} :Expr (:at 1504774121421) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610611991413) (:by |rJoDgvdeG) (:text |first)
                                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-entry)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                                  |n $ %{} :Leaf (:at 1612023323656) (:by |rJoDgvdeG) (:text |c-coord)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-style)
                                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |1)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                                              |j $ %{} :Expr (:at 1689525324415) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1689525325107) (:by |rJoDgvdeG) (:text |collect!)
                                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1689525326601) (:by |rJoDgvdeG) (:text |::)
                                                      |j $ %{} :Leaf (:at 1689525328424) (:by |rJoDgvdeG) (:text |:add-style)
                                                      |n $ %{} :Leaf (:at 1612023328359) (:by |rJoDgvdeG) (:text |c-coord)
                                                      |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                                      |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-entry)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                                  |n $ %{} :Leaf (:at 1612023329999) (:by |rJoDgvdeG) (:text |c-coord)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-style)
                                                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
                                      |x $ %{} :Expr (:at 1610029030691) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1610029031459) (:by |rJoDgvdeG) (:text |0)
                                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |do)
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |identical?)
                                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610611997460) (:by |rJoDgvdeG) (:text |last)
                                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-entry)
                                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610611999043) (:by |rJoDgvdeG) (:text |last)
                                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-entry)
                                                  |r $ %{} :Expr (:at 1689525330370) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1689525330961) (:by |rJoDgvdeG) (:text |collect!)
                                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1689525332662) (:by |rJoDgvdeG) (:text |::)
                                                          |j $ %{} :Leaf (:at 1689525334721) (:by |rJoDgvdeG) (:text |:replace-style)
                                                          |n $ %{} :Leaf (:at 1612023334789) (:by |rJoDgvdeG) (:text |c-coord)
                                                          |q $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                                          |s $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-entry)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |recur)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |collect!)
                                                  |n $ %{} :Leaf (:at 1612023331711) (:by |rJoDgvdeG) (:text |c-coord)
                                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
                                                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |old-follows)
                                                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-follows)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.render.diff)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |purify-element)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.detect)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
                        |r $ %{} :Leaf (:at 1571579443379) (:by |rJoDgvdeG) (:text |element?)
                |yr $ %{} :Expr (:at 1571584589156) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1571584594409) (:by |rJoDgvdeG) (:text |respo.render.effect)
                    |r $ %{} :Leaf (:at 1571584596307) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1571584596477) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1571584600097) (:by |rJoDgvdeG) (:text |collect-mounting)
                        |r $ %{} :Leaf (:at 1571584605204) (:by |rJoDgvdeG) (:text |collect-updating)
                        |v $ %{} :Leaf (:at 1571584609629) (:by |rJoDgvdeG) (:text |collect-unmounting)
                |yv $ %{} :Expr (:at 1572885674931) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572885674931) (:by |rJoDgvdeG) (:text |respo.util.list)
                    |r $ %{} :Leaf (:at 1572885674931) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1572885674931) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1572885674931) (:by |rJoDgvdeG) (:text |val-of-first)
                |z $ %{} :Expr (:at 1673971809207) (:by |rJoDgvdeG)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1673971812500) (:by |rJoDgvdeG) (:text |respo.schema)
                    |b $ %{} :Leaf (:at 1673971813259) (:by |rJoDgvdeG) (:text |:refer)
                    |h $ %{} :Expr (:at 1673971813536) (:by |rJoDgvdeG)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1673971815002) (:by |rJoDgvdeG) (:text |dev?)
    |respo.render.dom $ %{} :FileEntry
      :defs $ {}
        |make-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |make-element)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |virtual-element)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                  |n $ %{} :Leaf (:at 1612022050881) (:by |rJoDgvdeG) (:text |coord)
              |t $ %{} :Expr (:at 1612022087754) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612022090724) (:by |rJoDgvdeG) (:text |assert)
                  |j $ %{} :Leaf (:at 1612022096540) (:by |rJoDgvdeG) (:text "|\"coord is required")
                  |r $ %{} :Expr (:at 1612022098593) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612022102505) (:by |rJoDgvdeG) (:text |some?)
                      |T $ %{} :Leaf (:at 1612022098125) (:by |rJoDgvdeG) (:text |coord)
              |v $ %{} :Expr (:at 1612020844418) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1612020845406) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1612020845931) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612020850079) (:by |rJoDgvdeG) (:text |component?)
                      |j $ %{} :Leaf (:at 1612020854854) (:by |rJoDgvdeG) (:text |virtual-element)
                  |P $ %{} :Expr (:at 1612020856045) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612021159249) (:by |rJoDgvdeG) (:text |make-element)
                      |j $ %{} :Expr (:at 1612020902681) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1645979324597) (:by |rJoDgvdeG) (:text |&record:get)
                          |T $ %{} :Leaf (:at 1612020860572) (:by |rJoDgvdeG) (:text |virtual-element)
                          |b $ %{} :Leaf (:at 1645979322954) (:by |rJoDgvdeG) (:text |:tree)
                      |r $ %{} :Leaf (:at 1612020863121) (:by |rJoDgvdeG) (:text |listener-builder)
                      |v $ %{} :Expr (:at 1612020864193) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612020865861) (:by |rJoDgvdeG) (:text |conj)
                          |j $ %{} :Leaf (:at 1612020867341) (:by |rJoDgvdeG) (:text |coord)
                          |r $ %{} :Expr (:at 1612020868254) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1645979313225) (:by |rJoDgvdeG) (:text |&record:get)
                              |j $ %{} :Leaf (:at 1612020873918) (:by |rJoDgvdeG) (:text |virtual-element)
                              |n $ %{} :Leaf (:at 1645979309361) (:by |rJoDgvdeG) (:text |:name)
                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tag-name)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610190774281) (:by |rJoDgvdeG) (:text |turn-string)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1645979319635) (:by |rJoDgvdeG) (:text |&record:get)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |virtual-element)
                                      |n $ %{} :Leaf (:at 1645979317538) (:by |rJoDgvdeG) (:text |:name)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1645979294654) (:by |rJoDgvdeG) (:text |&record:get)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |virtual-element)
                                  |n $ %{} :Leaf (:at 1645979295648) (:by |rJoDgvdeG) (:text |:attrs)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1645979299948) (:by |rJoDgvdeG) (:text |&record:get)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |virtual-element)
                                  |n $ %{} :Leaf (:at 1645979298078) (:by |rJoDgvdeG) (:text |:style)
                          |t $ %{} :Expr (:at 1712376292784) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1712376293984) (:by |rJoDgvdeG) (:text |events)
                              |b $ %{} :Expr (:at 1712376294417) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1712376294417) (:by |rJoDgvdeG) (:text |&record:get)
                                  |b $ %{} :Leaf (:at 1712376294417) (:by |rJoDgvdeG) (:text |virtual-element)
                                  |h $ %{} :Leaf (:at 1712376294417) (:by |rJoDgvdeG) (:text |:event)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |children)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1645979306134) (:by |rJoDgvdeG) (:text |&record:get)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |virtual-element)
                                  |n $ %{} :Leaf (:at 1645979302209) (:by |rJoDgvdeG) (:text |:children)
                          |x $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |b $ %{} :Leaf (:at 1643708457553) (:by |rJoDgvdeG) (:text |js/document.createElement)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tag-name)
                          |y $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |child-elements)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619540312307) (:by |rJoDgvdeG) (:text |->)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |children)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |map)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610029968842) (:by |rJoDgvdeG) (:text |pair)
                                          |n $ %{} :Expr (:at 1645977020346) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1645977022973) (:by |rJoDgvdeG) (:text |assert)
                                              |b $ %{} :Leaf (:at 1645977032127) (:by |rJoDgvdeG) (:text "|\"expect pair of key/element")
                                              |h $ %{} :Expr (:at 1645977036451) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1645977037654) (:by |rJoDgvdeG) (:text |and)
                                                  |b $ %{} :Expr (:at 1645977039841) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1645977040601) (:by |rJoDgvdeG) (:text |list?)
                                                      |b $ %{} :Leaf (:at 1645977042048) (:by |rJoDgvdeG) (:text |pair)
                                                  |h $ %{} :Expr (:at 1645977042547) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1645977044905) (:by |rJoDgvdeG) (:text |&=)
                                                      |b $ %{} :Leaf (:at 1645977045753) (:by |rJoDgvdeG) (:text |2)
                                                      |h $ %{} :Expr (:at 1645977046268) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1645977047651) (:by |rJoDgvdeG) (:text |count)
                                                          |b $ %{} :Leaf (:at 1645977048296) (:by |rJoDgvdeG) (:text |pair)
                                          |r $ %{} :Expr (:at 1610029955816) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1612062757369) (:by |rJoDgvdeG) (:text |let[])
                                              |H $ %{} :Expr (:at 1612062758251) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1612062759143) (:by |rJoDgvdeG) (:text |k)
                                                  |j $ %{} :Leaf (:at 1612062760114) (:by |rJoDgvdeG) (:text |child)
                                              |J $ %{} :Leaf (:at 1612062762790) (:by |rJoDgvdeG) (:text |pair)
                                              |O $ %{} :Expr (:at 1628272781577) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1628272784524) (:by |rJoDgvdeG) (:text |when)
                                                  |j $ %{} :Expr (:at 1628272785234) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1628272786498) (:by |rJoDgvdeG) (:text |nil?)
                                                      |j $ %{} :Leaf (:at 1628272787174) (:by |rJoDgvdeG) (:text |k)
                                                  |r $ %{} :Expr (:at 1628272788102) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1628272815056) (:by |rJoDgvdeG) (:text |js/console.warn)
                                                      |j $ %{} :Leaf (:at 1628272836461) (:by |rJoDgvdeG) (:text "|\"nil key is bad for Respo")
                                              |T $ %{} :Expr (:at 1571497234163) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1571590120955) (:by |rJoDgvdeG) (:text |when)
                                                  |L $ %{} :Expr (:at 1571497235375) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1571590116440) (:by |rJoDgvdeG) (:text |some?)
                                                      |j $ %{} :Leaf (:at 1571497237959) (:by |rJoDgvdeG) (:text |child)
                                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |make-element)
                                                      |f $ %{} :Leaf (:at 1571497232967) (:by |rJoDgvdeG) (:text |child)
                                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                                                      |v $ %{} :Expr (:at 1612018956220) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1612018956907) (:by |rJoDgvdeG) (:text |conj)
                                                          |j $ %{} :Leaf (:at 1612018958719) (:by |rJoDgvdeG) (:text |coord)
                                                          |r $ %{} :Leaf (:at 1612018960165) (:by |rJoDgvdeG) (:text |k)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1712376441899) (:by |rJoDgvdeG) (:text |each)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                          |r $ %{} :Expr (:at 1712376449992) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1712376450547) (:by |rJoDgvdeG) (:text |fn)
                              |L $ %{} :Expr (:at 1712376450803) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1712376451438) (:by |rJoDgvdeG) (:text |entry)
                              |T $ %{} :Expr (:at 1710342216543) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1710342217228) (:by |rJoDgvdeG) (:text |let)
                                  |L $ %{} :Expr (:at 1710342218948) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1710342219354) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1710342220712) (:by |rJoDgvdeG) (:text |prop-str)
                                          |b $ %{} :Expr (:at 1710342221286) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1710342221286) (:by |rJoDgvdeG) (:text |turn-string)
                                              |b $ %{} :Expr (:at 1710342221286) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1710342221286) (:by |rJoDgvdeG) (:text |first)
                                                  |b $ %{} :Leaf (:at 1710342221286) (:by |rJoDgvdeG) (:text |entry)
                                      |b $ %{} :Expr (:at 1710342269252) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1710342269252) (:by |rJoDgvdeG) (:text |v)
                                          |b $ %{} :Expr (:at 1710342269252) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1710342269252) (:by |rJoDgvdeG) (:text |last)
                                              |b $ %{} :Leaf (:at 1710342269252) (:by |rJoDgvdeG) (:text |entry)
                                  |T $ %{} :Expr (:at 1710342234059) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1710342238666) (:by |rJoDgvdeG) (:text |if)
                                      |L $ %{} :Expr (:at 1710342246243) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1710342431002) (:by |rJoDgvdeG) (:text |.!startsWith)
                                          |b $ %{} :Leaf (:at 1710342280196) (:by |rJoDgvdeG) (:text |prop-str)
                                          |h $ %{} :Leaf (:at 1710342246243) (:by |rJoDgvdeG) (:text "|\"data-")
                                      |P $ %{} :Expr (:at 1710342262031) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1710342262031) (:by |rJoDgvdeG) (:text |->)
                                          |b $ %{} :Leaf (:at 1710342262031) (:by |rJoDgvdeG) (:text |element)
                                          |h $ %{} :Leaf (:at 1710342262031) (:by |rJoDgvdeG) (:text |.-dataset)
                                          |l $ %{} :Expr (:at 1710342262031) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1710342262031) (:by |rJoDgvdeG) (:text |js-set)
                                              |b $ %{} :Expr (:at 1710342262031) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1710342262031) (:by |rJoDgvdeG) (:text |.!slice)
                                                  |b $ %{} :Leaf (:at 1710342281344) (:by |rJoDgvdeG) (:text |prop-str)
                                                  |h $ %{} :Leaf (:at 1710342262031) (:by |rJoDgvdeG) (:text |5)
                                              |h $ %{} :Leaf (:at 1710342262031) (:by |rJoDgvdeG) (:text |v)
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |k)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
                                                      |b $ %{} :Leaf (:at 1710342214849) (:by |rJoDgvdeG) (:text |prop-str)
                                          |r $ %{} :Expr (:at 1505374985363) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1505374986462) (:by |root) (:text |if)
                                              |L $ %{} :Expr (:at 1505374987219) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1505374988848) (:by |root) (:text |some?)
                                                  |j $ %{} :Leaf (:at 1505374989216) (:by |root) (:text |v)
                                              |T $ %{} :Expr (:at 1541076675970) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1541076675970) (:by |root) (:text |aset)
                                                  |j $ %{} :Leaf (:at 1541076675970) (:by |root) (:text |element)
                                                  |r $ %{} :Leaf (:at 1541076675970) (:by |root) (:text |k)
                                                  |v $ %{} :Leaf (:at 1541076675970) (:by |root) (:text |v)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1712376460585) (:by |rJoDgvdeG) (:text |each)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style)
                          |r $ %{} :Expr (:at 1712376461765) (:by |rJoDgvdeG)
                            :data $ {}
                              |5 $ %{} :Leaf (:at 1712376466343) (:by |rJoDgvdeG) (:text |fn)
                              |D $ %{} :Expr (:at 1712376464777) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1712376462387) (:by |rJoDgvdeG) (:text |entry)
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |D $ %{} :Expr (:at 1613290335425) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1613290336787) (:by |rJoDgvdeG) (:text |style-name)
                                          |j $ %{} :Expr (:at 1613290339729) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1613290339729) (:by |rJoDgvdeG) (:text |turn-string)
                                              |j $ %{} :Expr (:at 1613290339729) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1613290339729) (:by |rJoDgvdeG) (:text |first)
                                                  |j $ %{} :Leaf (:at 1613290339729) (:by |rJoDgvdeG) (:text |entry)
                                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |k)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
                                              |j $ %{} :Leaf (:at 1613290343407) (:by |rJoDgvdeG) (:text |style-name)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |v)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |last)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |aset)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1623582306411) (:by |rJoDgvdeG) (:text |.-style)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |k)
                                      |v $ %{} :Expr (:at 1613290359578) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1613290359578) (:by |rJoDgvdeG) (:text |get-style-value)
                                          |j $ %{} :Leaf (:at 1613290359578) (:by |rJoDgvdeG) (:text |v)
                                          |r $ %{} :Leaf (:at 1614697683371) (:by |rJoDgvdeG) (:text |k)
                      |x $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610191910805) (:by |rJoDgvdeG) (:text |&doseq)
                          |j $ %{} :Expr (:at 1511710866263) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1623584104389) (:by |rJoDgvdeG) (:text |entry)
                              |b $ %{} :Leaf (:at 1712376289769) (:by |rJoDgvdeG) (:text |events)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |D $ %{} :Expr (:at 1623584106186) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1623584109099) (:by |rJoDgvdeG) (:text |event-name)
                                      |j $ %{} :Expr (:at 1623584109376) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1623584110032) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1623584111705) (:by |rJoDgvdeG) (:text |entry)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |name-in-string)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event->prop)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |aset)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |name-in-string)
                                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                                          |r $ %{} :Leaf (:at 1612018980216) (:by |rJoDgvdeG) (:text |coord)
                                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1622298951999) (:by |rJoDgvdeG) (:text |.!stopPropagation)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                      |y $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1712376506799) (:by |rJoDgvdeG) (:text |each)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |child-elements)
                          |r $ %{} :Expr (:at 1712376510562) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1712376511792) (:by |rJoDgvdeG) (:text |fn)
                              |L $ %{} :Expr (:at 1712376512888) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1712376512284) (:by |rJoDgvdeG) (:text |child-element)
                              |T $ %{} :Expr (:at 1610194965908) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1610194967094) (:by |rJoDgvdeG) (:text |if)
                                  |L $ %{} :Expr (:at 1610194967568) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610194968356) (:by |rJoDgvdeG) (:text |some?)
                                      |j $ %{} :Leaf (:at 1610194970311) (:by |rJoDgvdeG) (:text |child-element)
                                  |T $ %{} :Expr (:at 1610194936664) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1622298955108) (:by |rJoDgvdeG) (:text |.!appendChild)
                                      |j $ %{} :Leaf (:at 1610194936664) (:by |rJoDgvdeG) (:text |element)
                                      |r $ %{} :Leaf (:at 1610194936664) (:by |rJoDgvdeG) (:text |child-element)
                      |yT $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
        |style->string $ %{} :CodeEntry (:doc "|this functions is used inside DOM operations, inserting styles into a `<style>` element. to render to HTML, use `style->html` instead")
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style->string)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |styles)
              |t $ %{} :Expr (:at 1647336674746) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1647336685743) (:by |rJoDgvdeG) (:text |apply-args)
                  |b $ %{} :Expr (:at 1647336688837) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1647336689457) (:by |rJoDgvdeG) (:text "|\"")
                      |b $ %{} :Leaf (:at 1647336805648) (:by |rJoDgvdeG) (:text |styles)
                  |h $ %{} :Expr (:at 1647336698162) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1647336699655) (:by |rJoDgvdeG) (:text |fn)
                      |b $ %{} :Expr (:at 1647336699909) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647336701891) (:by |rJoDgvdeG) (:text |acc)
                          |b $ %{} :Leaf (:at 1647336703260) (:by |rJoDgvdeG) (:text |xs)
                      |h $ %{} :Expr (:at 1647336704934) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647336709457) (:by |rJoDgvdeG) (:text |if)
                          |b $ %{} :Expr (:at 1647336709914) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1647336713270) (:by |rJoDgvdeG) (:text |empty?)
                              |b $ %{} :Leaf (:at 1647336721692) (:by |rJoDgvdeG) (:text |xs)
                          |h $ %{} :Leaf (:at 1647336724257) (:by |rJoDgvdeG) (:text |acc)
                          |l $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |let)
                              |b $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Expr (:at 1647336737483) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647336738191) (:by |rJoDgvdeG) (:text |entry)
                                      |b $ %{} :Expr (:at 1647336738521) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1647336739183) (:by |rJoDgvdeG) (:text |first)
                                          |b $ %{} :Leaf (:at 1647336739788) (:by |rJoDgvdeG) (:text |xs)
                                  |T $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |k)
                                      |b $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |first)
                                          |b $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |entry)
                                  |b $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |style-name)
                                      |b $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |turn-string)
                                          |b $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |k)
                                  |h $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |v)
                                      |b $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |get-style-value)
                                          |b $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |last)
                                              |b $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |entry)
                                          |h $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |style-name)
                              |h $ %{} :Expr (:at 1647336743909) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1647336745114) (:by |rJoDgvdeG) (:text |recur)
                                  |T $ %{} :Expr (:at 1647336735698) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |str)
                                      |X $ %{} :Leaf (:at 1647336759201) (:by |rJoDgvdeG) (:text |acc)
                                      |b $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |style-name)
                                      |h $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text ||:)
                                      |l $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text |v)
                                      |o $ %{} :Leaf (:at 1647336735698) (:by |rJoDgvdeG) (:text ||;)
                                  |b $ %{} :Expr (:at 1647336768087) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647336768954) (:by |rJoDgvdeG) (:text |rest)
                                      |b $ %{} :Leaf (:at 1647336773208) (:by |rJoDgvdeG) (:text |xs)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.render.dom)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event->prop)
                        |x $ %{} :Leaf (:at 1613290197216) (:by |rJoDgvdeG) (:text |get-style-value)
                |v $ %{} :Expr (:at 1612020913904) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1612020934647) (:by |rJoDgvdeG) (:text |respo.util.detect)
                    |r $ %{} :Leaf (:at 1612020926615) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1612020927304) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1612020929515) (:by |rJoDgvdeG) (:text |component?)
    |respo.render.effect $ %{} :FileEntry
      :defs $ {}
        |collect-mounting $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1571579646781) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1571579646781) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1571579646781) (:by |rJoDgvdeG) (:text |collect-mounting)
              |r $ %{} :Expr (:at 1571579646781) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571579646781) (:by |rJoDgvdeG) (:text |collect!)
                  |b $ %{} :Leaf (:at 1612023688961) (:by |rJoDgvdeG) (:text |coord)
                  |j $ %{} :Leaf (:at 1571579646781) (:by |rJoDgvdeG) (:text |n-coord)
                  |r $ %{} :Leaf (:at 1572885009953) (:by |rJoDgvdeG) (:text |tree)
                  |v $ %{} :Leaf (:at 1572885011584) (:by |rJoDgvdeG) (:text |at-place?)
              |v $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |cond)
                  |j $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |component?)
                          |j $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |tree)
                      |j $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |let)
                          |j $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |effects)
                                  |j $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |:effects)
                                      |j $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |tree)
                              |j $ %{} :Expr (:at 1612107749840) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612107755098) (:by |rJoDgvdeG) (:text |next-coord)
                                  |j $ %{} :Expr (:at 1612107755943) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612107757361) (:by |rJoDgvdeG) (:text |conj)
                                      |j $ %{} :Leaf (:at 1612107761637) (:by |rJoDgvdeG) (:text |coord)
                                      |r $ %{} :Expr (:at 1612107762571) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612107763242) (:by |rJoDgvdeG) (:text |:name)
                                          |j $ %{} :Leaf (:at 1612107764981) (:by |rJoDgvdeG) (:text |tree)
                          |r $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610193541011) (:by |rJoDgvdeG) (:text |when)
                              |j $ %{} :Expr (:at 1610193541705) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1610193542323) (:by |rJoDgvdeG) (:text |not)
                                  |T $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |empty?)
                                      |j $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |effects)
                              |r $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610207682705) (:by |rJoDgvdeG) (:text |&doseq)
                                  |j $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |effect)
                                      |j $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |effects)
                                  |r $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |let)
                                      |j $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |method)
                                              |j $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |:method)
                                                  |j $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |effect)
                                      |r $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |collect!)
                                          |j $ %{} :Expr (:at 1689524740308) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1689524741209) (:by |rJoDgvdeG) (:text |::)
                                              |T $ %{} :Leaf (:at 1689524742062) (:by |rJoDgvdeG) (:text |:effect-mount)
                                              |b $ %{} :Leaf (:at 1689524744255) (:by |rJoDgvdeG) (:text |next-coord)
                                              |h $ %{} :Leaf (:at 1689524746255) (:by |rJoDgvdeG) (:text |n-coord)
                                              |l $ %{} :Expr (:at 1689524748273) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1689524748273) (:by |rJoDgvdeG) (:text |fn)
                                                  |b $ %{} :Expr (:at 1689524748273) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1689524748273) (:by |rJoDgvdeG) (:text |target)
                                                  |h $ %{} :Expr (:at 1689524748273) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1689524748273) (:by |rJoDgvdeG) (:text |method)
                                                      |b $ %{} :Expr (:at 1689524748273) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1689524748273) (:by |rJoDgvdeG) (:text |:args)
                                                          |b $ %{} :Leaf (:at 1689524748273) (:by |rJoDgvdeG) (:text |effect)
                                                      |h $ %{} :Expr (:at 1689524748273) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1689524748273) (:by |rJoDgvdeG) (:text |[])
                                                          |b $ %{} :Leaf (:at 1689524748273) (:by |rJoDgvdeG) (:text |:mount)
                                                          |h $ %{} :Leaf (:at 1689524748273) (:by |rJoDgvdeG) (:text |target)
                                                          |l $ %{} :Leaf (:at 1689524748273) (:by |rJoDgvdeG) (:text |at-place?)
                          |v $ %{} :Expr (:at 1571590471520) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571590474481) (:by |rJoDgvdeG) (:text |recur)
                              |j $ %{} :Leaf (:at 1571590471520) (:by |rJoDgvdeG) (:text |collect!)
                              |n $ %{} :Leaf (:at 1612107774840) (:by |rJoDgvdeG) (:text |next-coord)
                              |r $ %{} :Leaf (:at 1571590471520) (:by |rJoDgvdeG) (:text |n-coord)
                              |v $ %{} :Expr (:at 1571590471520) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571590471520) (:by |rJoDgvdeG) (:text |:tree)
                                  |j $ %{} :Leaf (:at 1571590471520) (:by |rJoDgvdeG) (:text |tree)
                              |x $ %{} :Leaf (:at 1572885120720) (:by |rJoDgvdeG) (:text |false)
                  |r $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |element?)
                          |j $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |tree)
                      |b $ %{} :Expr (:at 1643708328415) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1643708331165) (:by |rJoDgvdeG) (:text |apply-args)
                          |j $ %{} :Expr (:at 1643708332361) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1643708334529) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1643708334529) (:by |rJoDgvdeG) (:text |:children)
                                  |j $ %{} :Leaf (:at 1643708334529) (:by |rJoDgvdeG) (:text |tree)
                              |j $ %{} :Leaf (:at 1643708337951) (:by |rJoDgvdeG) (:text |0)
                          |r $ %{} :Expr (:at 1643708340744) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1643708342071) (:by |rJoDgvdeG) (:text |fn)
                              |j $ %{} :Expr (:at 1643708342535) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1643708343886) (:by |rJoDgvdeG) (:text |children)
                                  |j $ %{} :Leaf (:at 1643708344657) (:by |rJoDgvdeG) (:text |idx)
                              |r $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |when)
                                  |j $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |not)
                                      |j $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |empty?)
                                          |j $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |children)
                                  |r $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |let)
                                      |j $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |pair)
                                              |j $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |first)
                                                  |j $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |children)
                                          |j $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |k)
                                              |j $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |first)
                                                  |j $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |pair)
                                      |r $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |collect-mounting)
                                          |j $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |collect!)
                                          |r $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |conj)
                                              |j $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |coord)
                                              |r $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |k)
                                          |v $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |conj)
                                              |j $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |n-coord)
                                              |r $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |idx)
                                          |x $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |last)
                                              |j $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |pair)
                                          |y $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |false)
                                  |v $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |recur)
                                      |j $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |rest)
                                          |j $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |children)
                                      |r $ %{} :Expr (:at 1643708368551) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |inc)
                                          |j $ %{} :Leaf (:at 1643708368551) (:by |rJoDgvdeG) (:text |idx)
                  |v $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610203210490) (:by |rJoDgvdeG) (:text |true)
                      |j $ %{} :Expr (:at 1571586818321) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |js/console.warn)
                          |j $ %{} :Leaf (:at 1571586829665) (:by |rJoDgvdeG) (:text "|\"Unknown entry for mounting:")
                          |r $ %{} :Leaf (:at 1571586818321) (:by |rJoDgvdeG) (:text |tree)
        |collect-unmounting $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1571579661718) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1571579661718) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1571579661718) (:by |rJoDgvdeG) (:text |collect-unmounting)
              |r $ %{} :Expr (:at 1571579661718) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571579661718) (:by |rJoDgvdeG) (:text |collect!)
                  |b $ %{} :Leaf (:at 1612022741282) (:by |rJoDgvdeG) (:text |coord)
                  |j $ %{} :Leaf (:at 1571579661718) (:by |rJoDgvdeG) (:text |n-coord)
                  |r $ %{} :Leaf (:at 1571586343497) (:by |rJoDgvdeG) (:text |tree)
                  |v $ %{} :Leaf (:at 1572885289598) (:by |rJoDgvdeG) (:text |at-place?)
              |v $ %{} :Expr (:at 1571585891342) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571585896817) (:by |rJoDgvdeG) (:text |cond)
                  |j $ %{} :Expr (:at 1571585897081) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571585897489) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571585899319) (:by |rJoDgvdeG) (:text |component?)
                          |j $ %{} :Leaf (:at 1571586347005) (:by |rJoDgvdeG) (:text |tree)
                      |j $ %{} :Expr (:at 1571585913161) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571586629562) (:by |rJoDgvdeG) (:text |let)
                          |b $ %{} :Expr (:at 1571586629954) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1571586630229) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571586631810) (:by |rJoDgvdeG) (:text |effects)
                                  |j $ %{} :Expr (:at 1571586633045) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586647427) (:by |rJoDgvdeG) (:text |:effects)
                                      |j $ %{} :Leaf (:at 1571586649034) (:by |rJoDgvdeG) (:text |tree)
                              |j $ %{} :Expr (:at 1612022722486) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612022726520) (:by |rJoDgvdeG) (:text |new-coord)
                                  |j $ %{} :Expr (:at 1612022728753) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1612022731185) (:by |rJoDgvdeG) (:text |conj)
                                      |j $ %{} :Leaf (:at 1612022734197) (:by |rJoDgvdeG) (:text |coord)
                                      |r $ %{} :Expr (:at 1612022734545) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612022735321) (:by |rJoDgvdeG) (:text |:name)
                                          |j $ %{} :Leaf (:at 1612022736016) (:by |rJoDgvdeG) (:text |tree)
                          |f $ %{} :Expr (:at 1571590486108) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571590488915) (:by |rJoDgvdeG) (:text |collect-unmounting)
                              |j $ %{} :Leaf (:at 1571590486108) (:by |rJoDgvdeG) (:text |collect!)
                              |n $ %{} :Leaf (:at 1612022691999) (:by |rJoDgvdeG) (:text |new-coord)
                              |r $ %{} :Leaf (:at 1571590486108) (:by |rJoDgvdeG) (:text |n-coord)
                              |v $ %{} :Expr (:at 1571590486108) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571590486108) (:by |rJoDgvdeG) (:text |:tree)
                                  |j $ %{} :Leaf (:at 1571590486108) (:by |rJoDgvdeG) (:text |tree)
                              |x $ %{} :Leaf (:at 1572885305363) (:by |rJoDgvdeG) (:text |false)
                          |j $ %{} :Expr (:at 1571586677962) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610212209040) (:by |rJoDgvdeG) (:text |when)
                              |L $ %{} :Expr (:at 1610212209464) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1610212210200) (:by |rJoDgvdeG) (:text |not)
                                  |T $ %{} :Expr (:at 1571586680081) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586683132) (:by |rJoDgvdeG) (:text |empty?)
                                      |j $ %{} :Leaf (:at 1571586684883) (:by |rJoDgvdeG) (:text |effects)
                              |T $ %{} :Expr (:at 1571586686158) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1610212258016) (:by |rJoDgvdeG) (:text |&doseq)
                                  |L $ %{} :Expr (:at 1571586689267) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586692741) (:by |rJoDgvdeG) (:text |effect)
                                      |j $ %{} :Leaf (:at 1571586694161) (:by |rJoDgvdeG) (:text |effects)
                                  |T $ %{} :Expr (:at 1571586699776) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1571586700336) (:by |rJoDgvdeG) (:text |let)
                                      |L $ %{} :Expr (:at 1571586700535) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1571586700660) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1571586701749) (:by |rJoDgvdeG) (:text |method)
                                              |j $ %{} :Expr (:at 1571586702038) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1571586703741) (:by |rJoDgvdeG) (:text |:method)
                                                  |j $ %{} :Leaf (:at 1571586705413) (:by |rJoDgvdeG) (:text |effect)
                                      |T $ %{} :Expr (:at 1689525181445) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1689525183729) (:by |rJoDgvdeG) (:text |collect!)
                                          |T $ %{} :Expr (:at 1571585914395) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1689525178909) (:by |rJoDgvdeG) (:text |::)
                                              |j $ %{} :Leaf (:at 1689525180951) (:by |rJoDgvdeG) (:text |:effect-unmount)
                                              |n $ %{} :Leaf (:at 1612022752914) (:by |rJoDgvdeG) (:text |new-coord)
                                              |q $ %{} :Leaf (:at 1571586777956) (:by |rJoDgvdeG) (:text |n-coord)
                                              |s $ %{} :Expr (:at 1571585928880) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1571585936925) (:by |rJoDgvdeG) (:text |fn)
                                                  |j $ %{} :Expr (:at 1571585937176) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1571585938055) (:by |rJoDgvdeG) (:text |target)
                                                  |r $ %{} :Expr (:at 1571585939168) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1571586730363) (:by |rJoDgvdeG) (:text |method)
                                                      |r $ %{} :Expr (:at 1571586738020) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1571586738785) (:by |rJoDgvdeG) (:text |:args)
                                                          |j $ %{} :Leaf (:at 1571586740012) (:by |rJoDgvdeG) (:text |effect)
                                                      |v $ %{} :Expr (:at 1571586741797) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1571586742046) (:by |rJoDgvdeG) (:text |[])
                                                          |j $ %{} :Leaf (:at 1571586744576) (:by |rJoDgvdeG) (:text |:unmount)
                                                          |r $ %{} :Leaf (:at 1594556676527) (:by |rJoDgvdeG) (:text |target)
                                                          |x $ %{} :Leaf (:at 1572885460369) (:by |rJoDgvdeG) (:text |at-place?)
                  |r $ %{} :Expr (:at 1571585951623) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571585954185) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571585956221) (:by |rJoDgvdeG) (:text |element?)
                          |j $ %{} :Leaf (:at 1571586348710) (:by |rJoDgvdeG) (:text |tree)
                      |j $ %{} :Expr (:at 1571585998763) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571586319279) (:by |rJoDgvdeG) (:text |loop)
                          |j $ %{} :Expr (:at 1571586320116) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1571586320266) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571586332867) (:by |rJoDgvdeG) (:text |children)
                                  |j $ %{} :Expr (:at 1571586334158) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586338117) (:by |rJoDgvdeG) (:text |:children)
                                      |j $ %{} :Leaf (:at 1571586341745) (:by |rJoDgvdeG) (:text |tree)
                              |j $ %{} :Expr (:at 1571586428636) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571586430733) (:by |rJoDgvdeG) (:text |idx)
                                  |j $ %{} :Leaf (:at 1571586431496) (:by |rJoDgvdeG) (:text |0)
                          |r $ %{} :Expr (:at 1571586534778) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610212212388) (:by |rJoDgvdeG) (:text |when)
                              |L $ %{} :Expr (:at 1610212212898) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1610212213927) (:by |rJoDgvdeG) (:text |not)
                                  |T $ %{} :Expr (:at 1571586535981) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586537607) (:by |rJoDgvdeG) (:text |empty?)
                                      |j $ %{} :Leaf (:at 1571586539932) (:by |rJoDgvdeG) (:text |children)
                              |P $ %{} :Expr (:at 1612108073229) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1612108073964) (:by |rJoDgvdeG) (:text |let)
                                  |L $ %{} :Expr (:at 1612108074207) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1612108074440) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612108075531) (:by |rJoDgvdeG) (:text |pair)
                                          |j $ %{} :Expr (:at 1612108075981) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612108077435) (:by |rJoDgvdeG) (:text |first)
                                              |j $ %{} :Leaf (:at 1612108078493) (:by |rJoDgvdeG) (:text |children)
                                      |j $ %{} :Expr (:at 1612108081512) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612108081941) (:by |rJoDgvdeG) (:text |k)
                                          |j $ %{} :Expr (:at 1612108083440) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1612108083322) (:by |rJoDgvdeG) (:text |first)
                                              |j $ %{} :Leaf (:at 1612108084538) (:by |rJoDgvdeG) (:text |pair)
                                  |T $ %{} :Expr (:at 1571586563209) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586836392) (:by |rJoDgvdeG) (:text |collect-unmounting)
                                      |j $ %{} :Leaf (:at 1571586569624) (:by |rJoDgvdeG) (:text |collect!)
                                      |n $ %{} :Expr (:at 1612022762219) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1612022763346) (:by |rJoDgvdeG) (:text |conj)
                                          |T $ %{} :Leaf (:at 1612022761840) (:by |rJoDgvdeG) (:text |coord)
                                          |j $ %{} :Leaf (:at 1612108086899) (:by |rJoDgvdeG) (:text |k)
                                      |r $ %{} :Expr (:at 1571586574715) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1571586578893) (:by |rJoDgvdeG) (:text |conj)
                                          |j $ %{} :Leaf (:at 1571586581173) (:by |rJoDgvdeG) (:text |n-coord)
                                          |r $ %{} :Leaf (:at 1571586582687) (:by |rJoDgvdeG) (:text |idx)
                                      |v $ %{} :Expr (:at 1571586595529) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1612108090882) (:by |rJoDgvdeG) (:text |last)
                                          |j $ %{} :Leaf (:at 1612108093613) (:by |rJoDgvdeG) (:text |pair)
                                      |x $ %{} :Leaf (:at 1572885308599) (:by |rJoDgvdeG) (:text |false)
                              |T $ %{} :Expr (:at 1571586517651) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571586496005) (:by |rJoDgvdeG) (:text |recur)
                                  |n $ %{} :Expr (:at 1571586616498) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586617696) (:by |rJoDgvdeG) (:text |rest)
                                      |j $ %{} :Leaf (:at 1571586618983) (:by |rJoDgvdeG) (:text |children)
                                  |r $ %{} :Expr (:at 1571586614232) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571586614561) (:by |rJoDgvdeG) (:text |inc)
                                      |j $ %{} :Leaf (:at 1571586615527) (:by |rJoDgvdeG) (:text |idx)
                  |v $ %{} :Expr (:at 1571585959871) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610203189216) (:by |rJoDgvdeG) (:text |true)
                      |j $ %{} :Expr (:at 1571585960839) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571585970462) (:by |rJoDgvdeG) (:text |js/console.warn)
                          |j $ %{} :Leaf (:at 1571585993654) (:by |rJoDgvdeG) (:text "|\"Unknown entry for unmounting:")
                          |r $ %{} :Leaf (:at 1571586798958) (:by |rJoDgvdeG) (:text |tree)
        |collect-updating $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1571584455918) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1571584455918) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1571584455918) (:by |rJoDgvdeG) (:text |collect-updating)
              |r $ %{} :Expr (:at 1571584455918) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571584455918) (:by |rJoDgvdeG) (:text |collect!)
                  |b $ %{} :Leaf (:at 1572153040835) (:by |rJoDgvdeG) (:text |action)
                  |f $ %{} :Leaf (:at 1612022578597) (:by |rJoDgvdeG) (:text |coord)
                  |j $ %{} :Leaf (:at 1571584455918) (:by |rJoDgvdeG) (:text |n-coord)
                  |r $ %{} :Leaf (:at 1571584455918) (:by |rJoDgvdeG) (:text |old-tree)
                  |v $ %{} :Leaf (:at 1571584455918) (:by |rJoDgvdeG) (:text |new-tree)
              |t $ %{} :Expr (:at 1612107961115) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612107962405) (:by |rJoDgvdeG) (:text |assert)
                  |j $ %{} :Leaf (:at 1612107967455) (:by |rJoDgvdeG) (:text "|\"expects component")
                  |r $ %{} :Expr (:at 1612107968132) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612107970464) (:by |rJoDgvdeG) (:text |component?)
                      |j $ %{} :Leaf (:at 1612107973136) (:by |rJoDgvdeG) (:text |new-tree)
              |v $ %{} :Expr (:at 1571584694613) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1571584698291) (:by |rJoDgvdeG) (:text |let)
                  |L $ %{} :Expr (:at 1571584698512) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1571584698805) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571584700271) (:by |rJoDgvdeG) (:text |effects)
                          |j $ %{} :Expr (:at 1571584700545) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571584701972) (:by |rJoDgvdeG) (:text |:effects)
                              |j $ %{} :Leaf (:at 1571584703782) (:by |rJoDgvdeG) (:text |new-tree)
                      |j $ %{} :Expr (:at 1612107975312) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612107979707) (:by |rJoDgvdeG) (:text |next-coord)
                          |j $ %{} :Expr (:at 1612107980803) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612107983668) (:by |rJoDgvdeG) (:text |conj)
                              |j $ %{} :Leaf (:at 1612107984966) (:by |rJoDgvdeG) (:text |coord)
                              |r $ %{} :Expr (:at 1612107985552) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612107986175) (:by |rJoDgvdeG) (:text |:name)
                                  |j $ %{} :Leaf (:at 1612108160096) (:by |rJoDgvdeG) (:text |new-tree)
                  |P $ %{} :Expr (:at 1571584705125) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610211826818) (:by |rJoDgvdeG) (:text |when)
                      |j $ %{} :Expr (:at 1610211827287) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1610211830328) (:by |rJoDgvdeG) (:text |not)
                          |T $ %{} :Expr (:at 1571584708362) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571584711219) (:by |rJoDgvdeG) (:text |empty?)
                              |j $ %{} :Leaf (:at 1571584712799) (:by |rJoDgvdeG) (:text |effects)
                      |r $ %{} :Expr (:at 1571584716485) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1571585862241) (:by |rJoDgvdeG) (:text |;)
                          |T $ %{} :Leaf (:at 1571584716485) (:by |rJoDgvdeG) (:text |js/console.log)
                          |j $ %{} :Leaf (:at 1571590555841) (:by |rJoDgvdeG) (:text "|\"collect update")
                          |n $ %{} :Leaf (:at 1571584719536) (:by |rJoDgvdeG) (:text |n-coord)
                          |r $ %{} :Expr (:at 1571584716485) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571584716485) (:by |rJoDgvdeG) (:text |:effects)
                              |j $ %{} :Leaf (:at 1571584716485) (:by |rJoDgvdeG) (:text |new-tree)
                      |v $ %{} :Expr (:at 1571584751804) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610212047512) (:by |rJoDgvdeG) (:text |&doseq)
                          |j $ %{} :Expr (:at 1571584773130) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571584975056) (:by |rJoDgvdeG) (:text |idx)
                              |j $ %{} :Expr (:at 1571584885264) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571584885903) (:by |rJoDgvdeG) (:text |range)
                                  |j $ %{} :Expr (:at 1571584886318) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571584887014) (:by |rJoDgvdeG) (:text |count)
                                      |j $ %{} :Leaf (:at 1571584927299) (:by |rJoDgvdeG) (:text |effects)
                          |r $ %{} :Expr (:at 1571584950008) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571584952057) (:by |rJoDgvdeG) (:text |let)
                              |j $ %{} :Expr (:at 1571584999530) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1571584952455) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571584955591) (:by |rJoDgvdeG) (:text |old-effect)
                                      |j $ %{} :Expr (:at 1571584955875) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1571585003308) (:by |rJoDgvdeG) (:text |get-in)
                                          |j $ %{} :Leaf (:at 1571584964889) (:by |rJoDgvdeG) (:text |old-tree)
                                          |r $ %{} :Expr (:at 1571584969652) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1571584969947) (:by |rJoDgvdeG) (:text |[])
                                              |j $ %{} :Leaf (:at 1571584971523) (:by |rJoDgvdeG) (:text |:effects)
                                              |r $ %{} :Leaf (:at 1571584976765) (:by |rJoDgvdeG) (:text |idx)
                                  |j $ %{} :Expr (:at 1571585004226) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571585008192) (:by |rJoDgvdeG) (:text |new-effect)
                                      |j $ %{} :Expr (:at 1571585019690) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1571585020331) (:by |rJoDgvdeG) (:text |get)
                                          |j $ %{} :Leaf (:at 1571585022098) (:by |rJoDgvdeG) (:text |effects)
                                          |r $ %{} :Leaf (:at 1571585023418) (:by |rJoDgvdeG) (:text |idx)
                                  |r $ %{} :Expr (:at 1571585029571) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571585030641) (:by |rJoDgvdeG) (:text |method)
                                      |j $ %{} :Expr (:at 1571585031352) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1571585034416) (:by |rJoDgvdeG) (:text |:method)
                                          |j $ %{} :Leaf (:at 1571585185787) (:by |rJoDgvdeG) (:text |new-effect)
                              |n $ %{} :Expr (:at 1571585169272) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1571585865038) (:by |rJoDgvdeG) (:text |;)
                                  |T $ %{} :Leaf (:at 1571585170099) (:by |rJoDgvdeG) (:text |println)
                                  |j $ %{} :Leaf (:at 1571585172869) (:by |rJoDgvdeG) (:text |old-effect)
                                  |r $ %{} :Leaf (:at 1571585176218) (:by |rJoDgvdeG) (:text |new-effect)
                              |r $ %{} :Expr (:at 1572083095144) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1610212058088) (:by |rJoDgvdeG) (:text |when)
                                  |L $ %{} :Expr (:at 1610212058703) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1610212059402) (:by |rJoDgvdeG) (:text |not)
                                      |T $ %{} :Expr (:at 1572083102323) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1572083103443) (:by |rJoDgvdeG) (:text |=seq)
                                          |j $ %{} :Expr (:at 1572083129368) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1572083131013) (:by |rJoDgvdeG) (:text |:args)
                                              |j $ %{} :Leaf (:at 1572083133653) (:by |rJoDgvdeG) (:text |new-effect)
                                          |r $ %{} :Expr (:at 1572083134287) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1572083136426) (:by |rJoDgvdeG) (:text |:args)
                                              |j $ %{} :Leaf (:at 1572083139307) (:by |rJoDgvdeG) (:text |old-effect)
                                  |T $ %{} :Expr (:at 1689525152129) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1689525153720) (:by |rJoDgvdeG) (:text |collect!)
                                      |T $ %{} :Expr (:at 1571585292071) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1689525156573) (:by |rJoDgvdeG) (:text |::)
                                          |T $ %{} :Expr (:at 1572521875365) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1572521876770) (:by |rJoDgvdeG) (:text |if)
                                              |j $ %{} :Expr (:at 1572521878149) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1572521878916) (:by |rJoDgvdeG) (:text |=)
                                                  |j $ %{} :Leaf (:at 1572521879907) (:by |rJoDgvdeG) (:text |:update)
                                                  |r $ %{} :Leaf (:at 1572521882253) (:by |rJoDgvdeG) (:text |action)
                                              |r $ %{} :Leaf (:at 1689525158694) (:by |rJoDgvdeG) (:text |:effect-update)
                                              |v $ %{} :Leaf (:at 1689525162123) (:by |rJoDgvdeG) (:text |:effect-before-update)
                                          |b $ %{} :Leaf (:at 1612107997359) (:by |rJoDgvdeG) (:text |next-coord)
                                          |h $ %{} :Leaf (:at 1571585066870) (:by |rJoDgvdeG) (:text |n-coord)
                                          |l $ %{} :Expr (:at 1571585127485) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1571585127762) (:by |rJoDgvdeG) (:text |fn)
                                              |j $ %{} :Expr (:at 1571585128067) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1571585131288) (:by |rJoDgvdeG) (:text |target)
                                              |r $ %{} :Expr (:at 1571585131846) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1571585136028) (:by |rJoDgvdeG) (:text |method)
                                                  |j $ %{} :Expr (:at 1571585137281) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1571585138840) (:by |rJoDgvdeG) (:text |:args)
                                                      |j $ %{} :Leaf (:at 1571585141953) (:by |rJoDgvdeG) (:text |new-effect)
                                                  |v $ %{} :Expr (:at 1571585150952) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1571585151241) (:by |rJoDgvdeG) (:text |[])
                                                      |j $ %{} :Leaf (:at 1572153043669) (:by |rJoDgvdeG) (:text |action)
                                                      |r $ %{} :Leaf (:at 1571585163761) (:by |rJoDgvdeG) (:text |target)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1571584552862) (:by |rJoDgvdeG)
          :data $ {}
            |T $ %{} :Leaf (:at 1571584552862) (:by |rJoDgvdeG) (:text |ns)
            |j $ %{} :Leaf (:at 1571584552862) (:by |rJoDgvdeG) (:text |respo.render.effect)
            |r $ %{} :Expr (:at 1571585076407) (:by |rJoDgvdeG)
              :data $ {}
                |T $ %{} :Leaf (:at 1571585077120) (:by |rJoDgvdeG) (:text |:require)
                |j $ %{} :Expr (:at 1571585077332) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1571585107681) (:by |rJoDgvdeG) (:text |respo.schema.op)
                    |p $ %{} :Leaf (:at 1571585109673) (:by |rJoDgvdeG) (:text |:as)
                    |v $ %{} :Leaf (:at 1571585110835) (:by |rJoDgvdeG) (:text |op)
                |r $ %{} :Expr (:at 1571585876619) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1571585881514) (:by |rJoDgvdeG) (:text |respo.util.detect)
                    |r $ %{} :Leaf (:at 1571585882695) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1571585882869) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1571585885737) (:by |rJoDgvdeG) (:text |component?)
                        |r $ %{} :Leaf (:at 1571585888334) (:by |rJoDgvdeG) (:text |element?)
                        |v $ %{} :Leaf (:at 1572083125844) (:by |rJoDgvdeG) (:text |=seq)
                |v $ %{} :Expr (:at 1572885775286) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572885779772) (:by |rJoDgvdeG) (:text |respo.util.list)
                    |r $ %{} :Leaf (:at 1572885780572) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1572885780888) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1572885781518) (:by |rJoDgvdeG) (:text |val-of-first)
    |respo.render.html $ %{} :FileEntry
      :defs $ {}
        |element->string $ %{} :CodeEntry (:doc "|which is actually `element->html`")
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element->string)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tag-name)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610287168609) (:by |rJoDgvdeG) (:text |turn-string)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |P $ %{} :Leaf (:at 1610287930130) (:by |rJoDgvdeG) (:text |pairs-map)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:attrs)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |styles)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610289009104) (:by |rJoDgvdeG) (:text |either)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |text-inside)
                          |j $ %{} :Expr (:at 1512356708165) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1512356709151) (:by |rJoDgvdeG) (:text |if)
                              |L $ %{} :Expr (:at 1512356709603) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1512356709729) (:by |rJoDgvdeG) (:text |=)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:name)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                                  |r $ %{} :Leaf (:at 1512356722395) (:by |rJoDgvdeG) (:text |:textarea)
                              |P $ %{} :Expr (:at 1512356723117) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1512356727951) (:by |rJoDgvdeG) (:text |escape-html)
                                  |j $ %{} :Expr (:at 1512356856748) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1512356856393) (:by |rJoDgvdeG) (:text |:value)
                                      |j $ %{} :Leaf (:at 1512356863457) (:by |rJoDgvdeG) (:text |attrs)
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610289011778) (:by |rJoDgvdeG) (:text |either)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:innerHTML)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |text->html)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                      |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tailored-props)
                          |j $ %{} :Expr (:at 1643708564892) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1647338398570) (:by |rJoDgvdeG) (:text |&let)
                              |T $ %{} :Expr (:at 1643708568307) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1643708570374) (:by |rJoDgvdeG) (:text |props)
                                  |b $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |->)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |attrs)
                                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dissoc)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:innerHTML)
                                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dissoc)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:inner-text)
                              |j $ %{} :Expr (:at 1643708574226) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1643708574226) (:by |rJoDgvdeG) (:text |if)
                                  |j $ %{} :Expr (:at 1643708574226) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1643708574226) (:by |rJoDgvdeG) (:text |empty?)
                                      |j $ %{} :Leaf (:at 1643708574226) (:by |rJoDgvdeG) (:text |styles)
                                  |r $ %{} :Leaf (:at 1643708574226) (:by |rJoDgvdeG) (:text |props)
                                  |v $ %{} :Expr (:at 1643708574226) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1643708574226) (:by |rJoDgvdeG) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1643708574226) (:by |rJoDgvdeG) (:text |props)
                                      |r $ %{} :Leaf (:at 1643708574226) (:by |rJoDgvdeG) (:text |:style)
                                      |v $ %{} :Leaf (:at 1643708574226) (:by |rJoDgvdeG) (:text |styles)
                      |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props-in-string)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1705684231638) (:by |rJoDgvdeG) (:text |props->html)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tailored-props)
                  |n $ %{} :Expr (:at 1625579782265) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1625579888048) (:by |rJoDgvdeG) (:text |if)
                      |T $ %{} :Expr (:at 1625579889062) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1625579934537) (:by |rJoDgvdeG) (:text |&set:includes?)
                          |T $ %{} :Leaf (:at 1625579787296) (:by |rJoDgvdeG) (:text |self-closing)
                          |j $ %{} :Leaf (:at 1625579897814) (:by |rJoDgvdeG) (:text |tag-name)
                      |j $ %{} :Expr (:at 1625579901219) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1625579901219) (:by |rJoDgvdeG) (:text |str)
                          |j $ %{} :Leaf (:at 1625579901219) (:by |rJoDgvdeG) (:text ||<)
                          |r $ %{} :Leaf (:at 1625579901219) (:by |rJoDgvdeG) (:text |tag-name)
                          |v $ %{} :Expr (:at 1625579901219) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1625579901219) (:by |rJoDgvdeG) (:text |if)
                              |j $ %{} :Expr (:at 1647338443508) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1647338443508) (:by |rJoDgvdeG) (:text |blank?)
                                  |b $ %{} :Leaf (:at 1647338443508) (:by |rJoDgvdeG) (:text |props-in-string)
                              |n $ %{} :Leaf (:at 1647338434731) (:by |rJoDgvdeG) (:text ||)
                              |r $ %{} :Leaf (:at 1625579901219) (:by |rJoDgvdeG) (:text "|| ")
                          |x $ %{} :Leaf (:at 1625579901219) (:by |rJoDgvdeG) (:text |props-in-string)
                          |y $ %{} :Leaf (:at 1625580373330) (:by |rJoDgvdeG) (:text "|| >")
                      |r $ %{} :Expr (:at 1625579931485) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1625579937268) (:by |rJoDgvdeG) (:text |&let)
                          |L $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1625579947826) (:by |rJoDgvdeG) (:text |children)
                              |j $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |->)
                                  |j $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |:children)
                                      |j $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |element)
                                  |r $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |map)
                                      |j $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |fn)
                                          |j $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |entry)
                                          |r $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |let)
                                              |j $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |child)
                                                      |j $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |last)
                                                          |j $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |entry)
                                              |r $ %{} :Expr (:at 1625579939145) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |element->string)
                                                  |j $ %{} :Leaf (:at 1625579939145) (:by |rJoDgvdeG) (:text |child)
                          |T $ %{} :Expr (:at 1625579902065) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text |str)
                              |j $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text ||<)
                              |r $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text |tag-name)
                              |v $ %{} :Expr (:at 1625579902065) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text |if)
                                  |b $ %{} :Expr (:at 1647338471411) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1647338471411) (:by |rJoDgvdeG) (:text |blank?)
                                      |b $ %{} :Leaf (:at 1647338471411) (:by |rJoDgvdeG) (:text |props-in-string)
                                  |f $ %{} :Leaf (:at 1647338472662) (:by |rJoDgvdeG) (:text "|\"")
                                  |r $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text "|| ")
                                  |v $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text ||)
                              |x $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text |props-in-string)
                              |y $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text ||>)
                              |yT $ %{} :Expr (:at 1625579902065) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text |either)
                                  |j $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text |text-inside)
                                  |r $ %{} :Expr (:at 1625579902065) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text |join-str)
                                      |j $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text |children)
                                      |r $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text ||)
                              |yj $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text ||</)
                              |yr $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text |tag-name)
                              |yv $ %{} :Leaf (:at 1625579902065) (:by |rJoDgvdeG) (:text ||>)
        |entry->html $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1705684210113) (:by |rJoDgvdeG) (:text |entry->html)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |k)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |v)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |last)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |prop->attr)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610289060967) (:by |rJoDgvdeG) (:text |turn-string)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |k)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||=)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623693894637) (:by |rJoDgvdeG) (:text |.escape)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1508599040218) (:by |root) (:text |cond)
                              |j $ %{} :Expr (:at 1508599040686) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |k)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1705684049444) (:by |rJoDgvdeG) (:text |style->html)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |v)
                              |v $ %{} :Expr (:at 1508599021605) (:by |root)
                                :data $ {}
                                  |L $ %{} :Expr (:at 1508599023893) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610289091650) (:by |rJoDgvdeG) (:text |bool?)
                                      |j $ %{} :Leaf (:at 1508599027170) (:by |root) (:text |v)
                                  |P $ %{} :Expr (:at 1508599029941) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508599030568) (:by |root) (:text |str)
                                      |j $ %{} :Leaf (:at 1508599031475) (:by |root) (:text |v)
                              |w $ %{} :Expr (:at 1508599021605) (:by |root)
                                :data $ {}
                                  |L $ %{} :Expr (:at 1508599023893) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508599060138) (:by |root) (:text |number?)
                                      |j $ %{} :Leaf (:at 1508599027170) (:by |root) (:text |v)
                                  |P $ %{} :Expr (:at 1508599029941) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508599030568) (:by |root) (:text |str)
                                      |j $ %{} :Leaf (:at 1508599031475) (:by |root) (:text |v)
                              |wT $ %{} :Expr (:at 1508599021605) (:by |root)
                                :data $ {}
                                  |L $ %{} :Expr (:at 1508599023893) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1685259587838) (:by |rJoDgvdeG) (:text |tag?)
                                      |j $ %{} :Leaf (:at 1508599027170) (:by |root) (:text |v)
                                  |P $ %{} :Expr (:at 1508599029941) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610289064493) (:by |rJoDgvdeG) (:text |turn-string)
                                      |j $ %{} :Leaf (:at 1508599031475) (:by |root) (:text |v)
                              |wj $ %{} :Expr (:at 1508599159698) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1508599163749) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1508599165979) (:by |root) (:text |string?)
                                      |j $ %{} :Leaf (:at 1508599166869) (:by |root) (:text |v)
                                  |j $ %{} :Expr (:at 1508599234789) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1508599235651) (:by |root) (:text |escape-html)
                                      |T $ %{} :Leaf (:at 1508599169148) (:by |root) (:text |v)
                              |x $ %{} :Expr (:at 1508599049536) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610203169002) (:by |rJoDgvdeG) (:text |true)
                                  |j $ %{} :Expr (:at 1508599161467) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1508599162298) (:by |root) (:text |str)
                                      |T $ %{} :Leaf (:at 1508599051449) (:by |root) (:text |v)
        |escape-html $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |escape-html)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |text)
              |v $ %{} :Expr (:at 1512356884509) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1512356885476) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1512356886561) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1512356888690) (:by |rJoDgvdeG) (:text |nil?)
                      |j $ %{} :Leaf (:at 1512356889535) (:by |rJoDgvdeG) (:text |text)
                  |P $ %{} :Leaf (:at 1596102369852) (:by |rJoDgvdeG) (:text "|\"")
                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |->)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |text)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623412070977) (:by |rJoDgvdeG) (:text |.replace)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||\"")
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||&quot;)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623412072880) (:by |rJoDgvdeG) (:text |.replace)
                          |j $ %{} :Leaf (:at 1512356539277) (:by |rJoDgvdeG) (:text ||<)
                          |r $ %{} :Leaf (:at 1512356541439) (:by |rJoDgvdeG) (:text ||&lt;)
                      |x $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623412074386) (:by |rJoDgvdeG) (:text |.replace)
                          |j $ %{} :Leaf (:at 1512356543433) (:by |rJoDgvdeG) (:text ||>)
                          |r $ %{} :Leaf (:at 1512356546006) (:by |rJoDgvdeG) (:text ||&gt;)
                      |y $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623412075612) (:by |rJoDgvdeG) (:text |.replace)
                          |j $ %{} :Leaf (:at 1610290907026) (:by |rJoDgvdeG) (:text |&newline)
                          |r $ %{} :Leaf (:at 1596102589821) (:by |rJoDgvdeG) (:text "|\"&#13;&#10;")
        |make-string $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |make-string)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612012140901) (:by |rJoDgvdeG) (:text |element)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element->string)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |purify-element)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mute-element)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
        |props->html $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1705684202394) (:by |rJoDgvdeG) (:text |props->html)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1619541584495) (:by |rJoDgvdeG) (:text |->)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props)
                  |p $ %{} :Expr (:at 1628626025644) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1628626025644) (:by |rJoDgvdeG) (:text |.to-list)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |filter)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610286036259) (:by |rJoDgvdeG) (:text |pair)
                          |r $ %{} :Expr (:at 1610286020849) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610286021564) (:by |rJoDgvdeG) (:text |let)
                              |L $ %{} :Expr (:at 1610286021768) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1610286021941) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610286022133) (:by |rJoDgvdeG) (:text |k)
                                      |j $ %{} :Expr (:at 1610286023147) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610286023849) (:by |rJoDgvdeG) (:text |first)
                                          |j $ %{} :Leaf (:at 1610286025524) (:by |rJoDgvdeG) (:text |pair)
                                  |j $ %{} :Expr (:at 1610286026081) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610286026599) (:by |rJoDgvdeG) (:text |v)
                                      |j $ %{} :Expr (:at 1610286026981) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610286033497) (:by |rJoDgvdeG) (:text |last)
                                          |j $ %{} :Leaf (:at 1610286029863) (:by |rJoDgvdeG) (:text |pair)
                              |T $ %{} :Expr (:at 1592797286599) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1592797287302) (:by |rJoDgvdeG) (:text |and)
                                  |L $ %{} :Expr (:at 1592797287684) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592797288707) (:by |rJoDgvdeG) (:text |some?)
                                      |j $ %{} :Leaf (:at 1592797289060) (:by |rJoDgvdeG) (:text |v)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |not)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1619542543700) (:by |rJoDgvdeG) (:text |starts-with?)
                                          |b $ %{} :Expr (:at 1619542547145) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1619542574914) (:by |rJoDgvdeG) (:text |turn-string)
                                              |j $ %{} :Leaf (:at 1619542547145) (:by |rJoDgvdeG) (:text |k)
                                          |j $ %{} :Leaf (:at 1619542576248) (:by |rJoDgvdeG) (:text ||on-)
                  |t $ %{} :Expr (:at 1705684124001) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1705684127571) (:by |rJoDgvdeG) (:text |.sort-by)
                      |b $ %{} :Leaf (:at 1705684129024) (:by |rJoDgvdeG) (:text |first)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |map)
                      |j $ %{} :Leaf (:at 1705684211846) (:by |rJoDgvdeG) (:text |entry->html)
                  |x $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610285926671) (:by |rJoDgvdeG) (:text |join-str)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "|| ")
        |self-closing $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1625579791816) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1625579791816) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1625579791816) (:by |rJoDgvdeG) (:text |self-closing)
              |r $ %{} :Expr (:at 1625579791816) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1625579797088) (:by |rJoDgvdeG) (:text |#{})
                  |j $ %{} :Leaf (:at 1625579799094) (:by |rJoDgvdeG) (:text "|\"area")
                  |r $ %{} :Leaf (:at 1625579801378) (:by |rJoDgvdeG) (:text "|\"base")
                  |v $ %{} :Leaf (:at 1625579808671) (:by |rJoDgvdeG) (:text "|\"br")
                  |x $ %{} :Leaf (:at 1625579810522) (:by |rJoDgvdeG) (:text "|\"col")
                  |y $ %{} :Leaf (:at 1625579812929) (:by |rJoDgvdeG) (:text "|\"embed")
                  |yT $ %{} :Leaf (:at 1625579815376) (:by |rJoDgvdeG) (:text "|\"hr")
                  |yj $ %{} :Leaf (:at 1625579817610) (:by |rJoDgvdeG) (:text "|\"img")
                  |yr $ %{} :Leaf (:at 1625579818625) (:by |rJoDgvdeG) (:text "|\"input")
                  |yv $ %{} :Leaf (:at 1625579819955) (:by |rJoDgvdeG) (:text "|\"link")
                  |yx $ %{} :Leaf (:at 1625579821907) (:by |rJoDgvdeG) (:text "|\"meta")
                  |yy $ %{} :Leaf (:at 1625579822976) (:by |rJoDgvdeG) (:text "|\"param")
                  |yyT $ %{} :Leaf (:at 1625579825169) (:by |rJoDgvdeG) (:text "|\"source")
                  |yyj $ %{} :Leaf (:at 1625579827647) (:by |rJoDgvdeG) (:text "|\"track")
                  |yyr $ %{} :Leaf (:at 1625579829632) (:by |rJoDgvdeG) (:text "|\"wbr")
        |style->html $ %{} :CodeEntry (:doc "|this function is intended for HTML rendering since it escaped characters.")
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1705684031885) (:by |rJoDgvdeG) (:text |style->html)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |styles)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1619541599812) (:by |rJoDgvdeG) (:text |->)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |styles)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1625826309275) (:by |rJoDgvdeG) (:text |map)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |k)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                                  |b $ %{} :Expr (:at 1613290141181) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1613290142519) (:by |rJoDgvdeG) (:text |style-name)
                                      |j $ %{} :Expr (:at 1613290142923) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1613290145505) (:by |rJoDgvdeG) (:text |turn-string)
                                          |j $ %{} :Leaf (:at 1613290147728) (:by |rJoDgvdeG) (:text |k)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |v)
                                      |j $ %{} :Expr (:at 1613290165024) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1613290165829) (:by |rJoDgvdeG) (:text |get-style-value)
                                          |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |last)
                                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                                          |j $ %{} :Expr (:at 1614697705681) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1614697709553) (:by |rJoDgvdeG) (:text |dashed->camel)
                                              |T $ %{} :Leaf (:at 1613290854409) (:by |rJoDgvdeG) (:text |style-name)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                                  |f $ %{} :Leaf (:at 1613290150922) (:by |rJoDgvdeG) (:text |style-name)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||:)
                                  |v $ %{} :Expr (:at 1705683598727) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1705683603153) (:by |rJoDgvdeG) (:text |escape-html)
                                      |T $ %{} :Leaf (:at 1613290173324) (:by |rJoDgvdeG) (:text |v)
                                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||;)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610285982170) (:by |rJoDgvdeG) (:text |join-str)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.render.html)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |prop->attr)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |purify-element)
                        |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mute-element)
                        |y $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |text->html)
                        |yT $ %{} :Leaf (:at 1613290193899) (:by |rJoDgvdeG) (:text |get-style-value)
                        |yj $ %{} :Leaf (:at 1614697715262) (:by |rJoDgvdeG) (:text |dashed->camel)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.detect)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element?)
    |respo.render.patch $ %{} :FileEntry
      :defs $ {}
        |add-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |add-element)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                  |v $ %{} :Leaf (:at 1612022182370) (:by |rJoDgvdeG) (:text |coord)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |make-element)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                              |v $ %{} :Leaf (:at 1612022188312) (:by |rJoDgvdeG) (:text |coord)
                  |r $ %{} :Expr (:at 1647336931337) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1647336933160) (:by |rJoDgvdeG) (:text |->)
                      |L $ %{} :Expr (:at 1647336935008) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647336935008) (:by |rJoDgvdeG) (:text |.-parentElement)
                          |b $ %{} :Leaf (:at 1647336935008) (:by |rJoDgvdeG) (:text |target)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1622299029389) (:by |rJoDgvdeG) (:text |.!insertBefore)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
                          |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
        |add-event $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |add-event)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1612064541697) (:by |rJoDgvdeG) (:text |event-name)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                  |v $ %{} :Leaf (:at 1612064579926) (:by |rJoDgvdeG) (:text |coord)
              |v $ %{} :Expr (:at 1612064548468) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1645976504938) (:by |rJoDgvdeG) (:text |&let)
                  |j $ %{} :Expr (:at 1612064548468) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |event-prop)
                      |b $ %{} :Expr (:at 1612064548468) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |event->prop)
                          |j $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |event-name)
                  |r $ %{} :Expr (:at 1612064548468) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |aset)
                      |j $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |target)
                      |r $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |event-prop)
                      |v $ %{} :Expr (:at 1612064548468) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |fn)
                          |j $ %{} :Expr (:at 1612064548468) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |event)
                          |r $ %{} :Expr (:at 1612064548468) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1612064548468) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |listener-builder)
                                  |j $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |event-name)
                              |j $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |event)
                              |r $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |coord)
                          |v $ %{} :Expr (:at 1612064548468) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1622299014311) (:by |rJoDgvdeG) (:text |.!stopPropagation)
                              |j $ %{} :Leaf (:at 1612064548468) (:by |rJoDgvdeG) (:text |event)
        |add-prop $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |add-prop)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1710308527644) (:by |rJoDgvdeG) (:text |p)
                  |n $ %{} :Leaf (:at 1710308670384) (:by |rJoDgvdeG) (:text |prop-value)
              |v $ %{} :Expr (:at 1710308612192) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1710308612839) (:by |rJoDgvdeG) (:text |let)
                  |L $ %{} :Expr (:at 1710308613529) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1710308613780) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710308616179) (:by |rJoDgvdeG) (:text |prop-str)
                          |b $ %{} :Expr (:at 1710308618023) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710308618023) (:by |rJoDgvdeG) (:text |turn-string)
                              |b $ %{} :Leaf (:at 1710308618023) (:by |rJoDgvdeG) (:text |p)
                  |T $ %{} :Expr (:at 1710308621232) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1710308621773) (:by |rJoDgvdeG) (:text |if)
                      |L $ %{} :Expr (:at 1710308622512) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710342444927) (:by |rJoDgvdeG) (:text |.!startsWith)
                          |b $ %{} :Leaf (:at 1710308627992) (:by |rJoDgvdeG) (:text |prop-str)
                          |h $ %{} :Leaf (:at 1710308629841) (:by |rJoDgvdeG) (:text "|\"data-")
                      |P $ %{} :Expr (:at 1710308633947) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710308638254) (:by |rJoDgvdeG) (:text |->)
                          |b $ %{} :Leaf (:at 1710308640146) (:by |rJoDgvdeG) (:text |target)
                          |h $ %{} :Leaf (:at 1710308642070) (:by |rJoDgvdeG) (:text |.-dataset)
                          |l $ %{} :Expr (:at 1710308643768) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710341734186) (:by |rJoDgvdeG) (:text |js-set)
                              |b $ %{} :Expr (:at 1710308646104) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710308649496) (:by |rJoDgvdeG) (:text |.!slice)
                                  |b $ %{} :Leaf (:at 1710308652566) (:by |rJoDgvdeG) (:text |prop-str)
                                  |h $ %{} :Leaf (:at 1710308657026) (:by |rJoDgvdeG) (:text |5)
                              |h $ %{} :Leaf (:at 1710308673211) (:by |rJoDgvdeG) (:text |prop-value)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710308536496) (:by |rJoDgvdeG) (:text |let)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |prop-name)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
                                      |j $ %{} :Leaf (:at 1710308619706) (:by |rJoDgvdeG) (:text |prop-str)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1623584543089) (:by |rJoDgvdeG) (:text |case-default)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |prop-name)
                              |n $ %{} :Expr (:at 1623584541095) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710341737082) (:by |rJoDgvdeG) (:text |js-set)
                                  |j $ %{} :Leaf (:at 1623584541095) (:by |rJoDgvdeG) (:text |target)
                                  |r $ %{} :Leaf (:at 1623584541095) (:by |rJoDgvdeG) (:text |prop-name)
                                  |v $ %{} :Leaf (:at 1623584541095) (:by |rJoDgvdeG) (:text |prop-value)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||style)
                                  |j $ %{} :Expr (:at 1541076694462) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1710341744368) (:by |rJoDgvdeG) (:text |js-set)
                                      |j $ %{} :Leaf (:at 1541076694462) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1541076694462) (:by |root) (:text |prop-name)
                                      |v $ %{} :Expr (:at 1541076694462) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1541076694462) (:by |root) (:text |style->string)
                                          |j $ %{} :Leaf (:at 1541076694462) (:by |root) (:text |prop-value)
        |add-style $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |add-style)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1710341914450) (:by |rJoDgvdeG) (:text |p)
                  |n $ %{} :Leaf (:at 1710341914874) (:by |rJoDgvdeG) (:text |v)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1710341917949) (:by |rJoDgvdeG) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-name)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610612096838) (:by |rJoDgvdeG) (:text |turn-string)
                                  |j $ %{} :Leaf (:at 1610612186380) (:by |rJoDgvdeG) (:text |p)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-value)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1613290110251) (:by |rJoDgvdeG) (:text |get-style-value)
                              |j $ %{} :Leaf (:at 1610612188246) (:by |rJoDgvdeG) (:text |v)
                              |r $ %{} :Leaf (:at 1613290113942) (:by |rJoDgvdeG) (:text |style-name)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1647336842675) (:by |rJoDgvdeG) (:text |->)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |.-style)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                      |n $ %{} :Expr (:at 1647336843974) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647336844329) (:by |rJoDgvdeG) (:text |aset)
                          |b $ %{} :Leaf (:at 1647336846760) (:by |rJoDgvdeG) (:text |style-name)
                          |h $ %{} :Leaf (:at 1647336849917) (:by |rJoDgvdeG) (:text |style-value)
        |append-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |append-element)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                  |v $ %{} :Leaf (:at 1612022230196) (:by |rJoDgvdeG) (:text |coord)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1645976532748) (:by |rJoDgvdeG) (:text |&let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |make-element)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                          |v $ %{} :Leaf (:at 1612022232328) (:by |rJoDgvdeG) (:text |coord)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1622299007499) (:by |rJoDgvdeG) (:text |.!appendChild)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
        |apply-dom-changes $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |apply-dom-changes)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |changes)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-point)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |root)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529815273075) (:by |root) (:text |.-firstElementChild)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mount-point)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610029065400) (:by |rJoDgvdeG) (:text |&doseq)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |changes)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1643708168971) (:by |rJoDgvdeG) (:text |let-sugar)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |f $ %{} :Expr (:at 1689524789482) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689524793423) (:by |rJoDgvdeG) (:text |n-coord)
                                  |b $ %{} :Expr (:at 1689524793932) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524794631) (:by |rJoDgvdeG) (:text |nth)
                                      |b $ %{} :Leaf (:at 1689524795956) (:by |rJoDgvdeG) (:text |op)
                                      |h $ %{} :Leaf (:at 1689524797505) (:by |rJoDgvdeG) (:text |2)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-target)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |root)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |n-coord)
                          |v $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1689524813435) (:by |rJoDgvdeG) (:text |tag-match)
                              |W $ %{} :Leaf (:at 1689524815091) (:by |rJoDgvdeG) (:text |op)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524824214) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524867348) (:by |rJoDgvdeG) (:text |:replace-prop)
                                      |b $ %{} :Leaf (:at 1689524863099) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524855330) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524838830) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |replace-prop)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |n $ %{} :Expr (:at 1710341790724) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1710341791221) (:by |rJoDgvdeG) (:text |nth)
                                          |b $ %{} :Leaf (:at 1710341794019) (:by |rJoDgvdeG) (:text |op-data)
                                          |h $ %{} :Leaf (:at 1710341795479) (:by |rJoDgvdeG) (:text |0)
                                      |r $ %{} :Expr (:at 1710341797035) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1710341800509) (:by |rJoDgvdeG) (:text |nth)
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                                          |b $ %{} :Leaf (:at 1710341801944) (:by |rJoDgvdeG) (:text |1)
                              |v $ %{} :Expr (:at 1513921637106) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524869894) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524869067) (:by |rJoDgvdeG) (:text |:add-prop)
                                      |b $ %{} :Leaf (:at 1689524872223) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524874505) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524875845) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |add-prop)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Expr (:at 1710308520320) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1710308521551) (:by |rJoDgvdeG) (:text |nth)
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                                          |b $ %{} :Leaf (:at 1710308522348) (:by |rJoDgvdeG) (:text |0)
                                      |t $ %{} :Expr (:at 1710308520320) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1710308521551) (:by |rJoDgvdeG) (:text |nth)
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                                          |b $ %{} :Leaf (:at 1710308524596) (:by |rJoDgvdeG) (:text |1)
                              |x $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524877284) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524878752) (:by |rJoDgvdeG) (:text |:rm-prop)
                                      |b $ %{} :Leaf (:at 1689524880705) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524882104) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524883955) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rm-prop)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                              |y $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524884964) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524886551) (:by |rJoDgvdeG) (:text |:add-style)
                                      |b $ %{} :Leaf (:at 1689524888388) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524889789) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524891644) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |add-style)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Expr (:at 1710341900623) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1710341903602) (:by |rJoDgvdeG) (:text |nth)
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                                          |b $ %{} :Leaf (:at 1710341904788) (:by |rJoDgvdeG) (:text |0)
                                      |t $ %{} :Expr (:at 1710341907230) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1710341907703) (:by |rJoDgvdeG) (:text |nth)
                                          |b $ %{} :Leaf (:at 1710341908964) (:by |rJoDgvdeG) (:text |op-data)
                                          |h $ %{} :Leaf (:at 1710341909270) (:by |rJoDgvdeG) (:text |1)
                              |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524892975) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524895029) (:by |rJoDgvdeG) (:text |:replace-style)
                                      |b $ %{} :Leaf (:at 1689524897506) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524898838) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524900354) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |replace-style)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Expr (:at 1710341854626) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1710341855185) (:by |rJoDgvdeG) (:text |nth)
                                          |b $ %{} :Leaf (:at 1710341857389) (:by |rJoDgvdeG) (:text |op-data)
                                          |h $ %{} :Leaf (:at 1710341857976) (:by |rJoDgvdeG) (:text |0)
                                      |t $ %{} :Expr (:at 1710341854626) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1710341855185) (:by |rJoDgvdeG) (:text |nth)
                                          |b $ %{} :Leaf (:at 1710341857389) (:by |rJoDgvdeG) (:text |op-data)
                                          |h $ %{} :Leaf (:at 1710341862706) (:by |rJoDgvdeG) (:text |1)
                              |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524901671) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524904517) (:by |rJoDgvdeG) (:text |:rm-style)
                                      |b $ %{} :Leaf (:at 1689524906321) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524907622) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524909039) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rm-style)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                              |yr $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524910601) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524911984) (:by |rJoDgvdeG) (:text |:set-event)
                                      |b $ %{} :Leaf (:at 1689524923858) (:by |rJoDgvdeG) (:text |coord)
                                      |h $ %{} :Leaf (:at 1689524914937) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524916954) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |add-event)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                                      |x $ %{} :Leaf (:at 1612064870128) (:by |rJoDgvdeG) (:text |coord)
                              |yv $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524926449) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524927343) (:by |rJoDgvdeG) (:text |:rm-event)
                                      |b $ %{} :Leaf (:at 1689524930788) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524932838) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524934421) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rm-event)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                              |yx $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524937070) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524938590) (:by |rJoDgvdeG) (:text |:add-element)
                                      |b $ %{} :Leaf (:at 1689524942521) (:by |rJoDgvdeG) (:text |coord)
                                      |h $ %{} :Leaf (:at 1689524944855) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524947220) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |add-element)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                                      |x $ %{} :Leaf (:at 1612023615160) (:by |rJoDgvdeG) (:text |coord)
                              |yy $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524948285) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524949661) (:by |rJoDgvdeG) (:text |:rm-element)
                                      |b $ %{} :Leaf (:at 1689524954471) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524955622) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524957388) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rm-element)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                              |yyT $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524958504) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524959786) (:by |rJoDgvdeG) (:text |:replace-element)
                                      |b $ %{} :Leaf (:at 1689524962005) (:by |rJoDgvdeG) (:text |coord)
                                      |h $ %{} :Leaf (:at 1689524963654) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524965670) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |replace-element)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                                      |x $ %{} :Leaf (:at 1612023617007) (:by |rJoDgvdeG) (:text |coord)
                              |yyj $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524966947) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524968193) (:by |rJoDgvdeG) (:text |:append-element)
                                      |b $ %{} :Leaf (:at 1689524971354) (:by |rJoDgvdeG) (:text |coord)
                                      |h $ %{} :Leaf (:at 1689524973204) (:by |rJoDgvdeG) (:text |_n-coord)
                                      |l $ %{} :Leaf (:at 1689524974641) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |append-element)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op-data)
                                      |v $ %{} :Leaf (:at 1612023620616) (:by |rJoDgvdeG) (:text |listener-builder)
                                      |x $ %{} :Leaf (:at 1612023621805) (:by |rJoDgvdeG) (:text |coord)
                              |yyn $ %{} :Expr (:at 1571584018933) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524975555) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524977903) (:by |rJoDgvdeG) (:text |:effect-mount)
                                      |b $ %{} :Leaf (:at 1689524987770) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524984067) (:by |rJoDgvdeG) (:text |n-coord)
                                      |l $ %{} :Leaf (:at 1689524990970) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1571584031327) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571584033932) (:by |rJoDgvdeG) (:text |run-effect)
                                      |j $ %{} :Leaf (:at 1571584035839) (:by |rJoDgvdeG) (:text |target)
                                      |r $ %{} :Leaf (:at 1571584039176) (:by |rJoDgvdeG) (:text |op-data)
                                      |v $ %{} :Leaf (:at 1572505555674) (:by |rJoDgvdeG) (:text |n-coord)
                              |yyp $ %{} :Expr (:at 1571584018933) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689524991789) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524993147) (:by |rJoDgvdeG) (:text |:effect-unmount)
                                      |b $ %{} :Leaf (:at 1689524997005) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689524998704) (:by |rJoDgvdeG) (:text |n-coord)
                                      |l $ %{} :Leaf (:at 1689525000820) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1571584031327) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571584033932) (:by |rJoDgvdeG) (:text |run-effect)
                                      |j $ %{} :Leaf (:at 1571584035839) (:by |rJoDgvdeG) (:text |target)
                                      |r $ %{} :Leaf (:at 1571584039176) (:by |rJoDgvdeG) (:text |op-data)
                                      |v $ %{} :Leaf (:at 1572505555674) (:by |rJoDgvdeG) (:text |n-coord)
                              |yyq $ %{} :Expr (:at 1571584018933) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689525001838) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689525003458) (:by |rJoDgvdeG) (:text |:effect-update)
                                      |b $ %{} :Leaf (:at 1689525006070) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689525007487) (:by |rJoDgvdeG) (:text |n-coord)
                                      |l $ %{} :Leaf (:at 1689525008992) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1571584031327) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571584033932) (:by |rJoDgvdeG) (:text |run-effect)
                                      |j $ %{} :Leaf (:at 1571584035839) (:by |rJoDgvdeG) (:text |target)
                                      |r $ %{} :Leaf (:at 1571584039176) (:by |rJoDgvdeG) (:text |op-data)
                                      |v $ %{} :Leaf (:at 1572505555674) (:by |rJoDgvdeG) (:text |n-coord)
                              |yyqT $ %{} :Expr (:at 1571584018933) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1689525010609) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689525013279) (:by |rJoDgvdeG) (:text |:effect-before-update)
                                      |b $ %{} :Leaf (:at 1689525020571) (:by |rJoDgvdeG) (:text |_coord)
                                      |h $ %{} :Leaf (:at 1689525022437) (:by |rJoDgvdeG) (:text |n-coord)
                                      |l $ %{} :Leaf (:at 1689525024254) (:by |rJoDgvdeG) (:text |op-data)
                                  |j $ %{} :Expr (:at 1571584031327) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571584033932) (:by |rJoDgvdeG) (:text |run-effect)
                                      |j $ %{} :Leaf (:at 1571584035839) (:by |rJoDgvdeG) (:text |target)
                                      |r $ %{} :Leaf (:at 1571584039176) (:by |rJoDgvdeG) (:text |op-data)
                                      |v $ %{} :Leaf (:at 1572505555674) (:by |rJoDgvdeG) (:text |n-coord)
                              |z $ %{} :Expr (:at 1689524818479) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689524818950) (:by |rJoDgvdeG) (:text |_)
                                  |b $ %{} :Expr (:at 1689524819599) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689524821499) (:by |rJoDgvdeG) (:text |eprintln)
                                      |b $ %{} :Leaf (:at 1689524819599) (:by |rJoDgvdeG) (:text "||not implemented:")
                                      |h $ %{} :Leaf (:at 1689525038792) (:by |rJoDgvdeG) (:text |op)
        |find-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |find-target)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |root)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |coord)
              |w $ %{} :Expr (:at 1705597671629) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1705597674201) (:by |rJoDgvdeG) (:text |list-match)
                  |b $ %{} :Leaf (:at 1705597681157) (:by |rJoDgvdeG) (:text |coord)
                  |h $ %{} :Expr (:at 1705597681992) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1705597682154) (:by |rJoDgvdeG)
                        :data $ {}
                      |b $ %{} :Leaf (:at 1705597684751) (:by |rJoDgvdeG) (:text |root)
                  |l $ %{} :Expr (:at 1705597685613) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1705597686498) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1705597692848) (:by |rJoDgvdeG) (:text |index)
                          |b $ %{} :Leaf (:at 1705597700298) (:by |rJoDgvdeG) (:text |xss)
                      |b $ %{} :Expr (:at 1705597711891) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1705597743285) (:by |rJoDgvdeG) (:text |if-let)
                          |b $ %{} :Expr (:at 1705597711891) (:by |rJoDgvdeG)
                            :data $ {}
                              |b $ %{} :Leaf (:at 1705597711891) (:by |rJoDgvdeG) (:text |child)
                              |h $ %{} :Expr (:at 1705597711891) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1705597711891) (:by |rJoDgvdeG) (:text |aget)
                                  |b $ %{} :Expr (:at 1705597711891) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1705597711891) (:by |rJoDgvdeG) (:text |.-children)
                                      |b $ %{} :Leaf (:at 1705597711891) (:by |rJoDgvdeG) (:text |root)
                                  |h $ %{} :Leaf (:at 1705597711891) (:by |rJoDgvdeG) (:text |index)
                          |h $ %{} :Expr (:at 1705597747696) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1705597747696) (:by |rJoDgvdeG) (:text |recur)
                              |b $ %{} :Leaf (:at 1705597747696) (:by |rJoDgvdeG) (:text |child)
                              |h $ %{} :Leaf (:at 1705597747696) (:by |rJoDgvdeG) (:text |xss)
        |replace-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |replace-element)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                  |v $ %{} :Leaf (:at 1612022219791) (:by |rJoDgvdeG) (:text |coord)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |make-element)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |listener-builder)
                              |v $ %{} :Leaf (:at 1612022221353) (:by |rJoDgvdeG) (:text |coord)
                  |r $ %{} :Expr (:at 1647336970277) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1647336971086) (:by |rJoDgvdeG) (:text |->)
                      |L $ %{} :Expr (:at 1647336973191) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647336973191) (:by |rJoDgvdeG) (:text |.-parentElement)
                          |b $ %{} :Leaf (:at 1647336973191) (:by |rJoDgvdeG) (:text |target)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1622298995389) (:by |rJoDgvdeG) (:text |.!insertBefore)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |new-element)
                          |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1622298996962) (:by |rJoDgvdeG) (:text |.!remove)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
        |replace-prop $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |replace-prop)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1710341807720) (:by |rJoDgvdeG) (:text |p)
                  |n $ %{} :Leaf (:at 1710341810794) (:by |rJoDgvdeG) (:text |prop-value)
              |v $ %{} :Expr (:at 1710308348982) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1710308349647) (:by |rJoDgvdeG) (:text |let)
                  |L $ %{} :Expr (:at 1710308349952) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1710308350052) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710308355156) (:by |rJoDgvdeG) (:text |prop-str)
                          |b $ %{} :Expr (:at 1710308358763) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710308358763) (:by |rJoDgvdeG) (:text |turn-string)
                              |b $ %{} :Leaf (:at 1710308358763) (:by |rJoDgvdeG) (:text |p)
                  |T $ %{} :Expr (:at 1710308372168) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1710308372773) (:by |rJoDgvdeG) (:text |if)
                      |L $ %{} :Expr (:at 1710308373259) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710342461139) (:by |rJoDgvdeG) (:text |.!startsWith)
                          |b $ %{} :Leaf (:at 1710308378934) (:by |rJoDgvdeG) (:text |prop-str)
                          |h $ %{} :Leaf (:at 1710308390502) (:by |rJoDgvdeG) (:text "|\"data-")
                      |P $ %{} :Expr (:at 1710308416452) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1710308416995) (:by |rJoDgvdeG) (:text |let)
                          |L $ %{} :Expr (:at 1710308417299) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Expr (:at 1710308417474) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710308422599) (:by |rJoDgvdeG) (:text |name)
                                  |b $ %{} :Expr (:at 1710308422843) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1710308432989) (:by |rJoDgvdeG) (:text |.!slice)
                                      |b $ %{} :Leaf (:at 1710308429579) (:by |rJoDgvdeG) (:text |prop-str)
                                      |h $ %{} :Leaf (:at 1710308429981) (:by |rJoDgvdeG) (:text |5)
                          |T $ %{} :Expr (:at 1710308402524) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710308402524) (:by |rJoDgvdeG) (:text |if)
                              |b $ %{} :Expr (:at 1710308402524) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710308402524) (:by |rJoDgvdeG) (:text |not=)
                                  |b $ %{} :Leaf (:at 1710308402524) (:by |rJoDgvdeG) (:text |prop-value)
                                  |h $ %{} :Expr (:at 1710308402524) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1710308408674) (:by |rJoDgvdeG) (:text |->)
                                      |b $ %{} :Leaf (:at 1710308402524) (:by |rJoDgvdeG) (:text |target)
                                      |h $ %{} :Leaf (:at 1710308410756) (:by |rJoDgvdeG) (:text |.-dataset)
                                      |l $ %{} :Expr (:at 1710308412497) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1710308413987) (:by |rJoDgvdeG) (:text |aget)
                                          |b $ %{} :Leaf (:at 1710308436491) (:by |rJoDgvdeG) (:text |name)
                              |h $ %{} :Expr (:at 1710308440865) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1710308442662) (:by |rJoDgvdeG) (:text |->)
                                  |L $ %{} :Leaf (:at 1710308443846) (:by |rJoDgvdeG) (:text |target)
                                  |P $ %{} :Leaf (:at 1710308446064) (:by |rJoDgvdeG) (:text |.-dataset)
                                  |T $ %{} :Expr (:at 1710308402524) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1710341830863) (:by |rJoDgvdeG) (:text |js-set)
                                      |h $ %{} :Leaf (:at 1710308453321) (:by |rJoDgvdeG) (:text |name)
                                      |l $ %{} :Leaf (:at 1710308402524) (:by |rJoDgvdeG) (:text |prop-value)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |prop-name)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
                                      |j $ %{} :Leaf (:at 1710308360257) (:by |rJoDgvdeG) (:text |prop-str)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1623584532031) (:by |rJoDgvdeG) (:text |identical?)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |prop-name)
                                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||value)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1643708945272) (:by |rJoDgvdeG) (:text |not=)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |prop-value)
                                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |.-value)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                                  |r $ %{} :Expr (:at 1541076728088) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1710341834257) (:by |rJoDgvdeG) (:text |js-set)
                                      |j $ %{} :Leaf (:at 1541076728088) (:by |root) (:text |target)
                                      |r $ %{} :Leaf (:at 1541076728088) (:by |root) (:text |prop-name)
                                      |v $ %{} :Leaf (:at 1541076728088) (:by |root) (:text |prop-value)
                              |v $ %{} :Expr (:at 1541076730573) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710341836193) (:by |rJoDgvdeG) (:text |js-set)
                                  |j $ %{} :Leaf (:at 1541076730573) (:by |root) (:text |target)
                                  |r $ %{} :Leaf (:at 1541076730573) (:by |root) (:text |prop-name)
                                  |v $ %{} :Leaf (:at 1541076730573) (:by |root) (:text |prop-value)
        |replace-style $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |replace-style)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1710341866012) (:by |rJoDgvdeG) (:text |p)
                  |n $ %{} :Leaf (:at 1710341866592) (:by |rJoDgvdeG) (:text |v)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1710341870073) (:by |rJoDgvdeG) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-name)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610612100602) (:by |rJoDgvdeG) (:text |turn-string)
                                  |j $ %{} :Leaf (:at 1610612197836) (:by |rJoDgvdeG) (:text |p)
                  |r $ %{} :Expr (:at 1647336883163) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1647336884058) (:by |rJoDgvdeG) (:text |->)
                      |L $ %{} :Expr (:at 1647336884672) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647336884672) (:by |rJoDgvdeG) (:text |.-style)
                          |b $ %{} :Leaf (:at 1647336884672) (:by |rJoDgvdeG) (:text |target)
                      |T $ %{} :Expr (:at 1621413309749) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |aset)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-name)
                          |x $ %{} :Expr (:at 1621413426428) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1621413426428) (:by |rJoDgvdeG) (:text |get-style-value)
                              |f $ %{} :Leaf (:at 1621413774644) (:by |rJoDgvdeG) (:text |v)
                              |r $ %{} :Leaf (:at 1621413426428) (:by |rJoDgvdeG) (:text |style-name)
        |rm-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rm-element)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1505376311769) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1505376312417) (:by |root) (:text |if)
                  |L $ %{} :Expr (:at 1505376313121) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1505376313962) (:by |root) (:text |some?)
                      |j $ %{} :Leaf (:at 1505376315269) (:by |root) (:text |target)
                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1623584509658) (:by |rJoDgvdeG) (:text |.!remove)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Expr (:at 1505376316231) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1623584507875) (:by |rJoDgvdeG) (:text |js/console.warn)
                      |r $ %{} :Leaf (:at 1505376369651) (:by |root) (:text "||Respo: Element already removed! Probably by :inner-text.")
        |rm-event $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rm-event)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1645976512523) (:by |rJoDgvdeG) (:text |&let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-prop)
                      |b $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event->prop)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-name)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1710343024617) (:by |rJoDgvdeG) (:text |js-set)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event-prop)
                      |t $ %{} :Leaf (:at 1710343026069) (:by |rJoDgvdeG) (:text |nil)
        |rm-prop $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rm-prop)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1678121931564) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1678121935631) (:by |rJoDgvdeG) (:text |case-default)
                  |H $ %{} :Leaf (:at 1678121946694) (:by |rJoDgvdeG) (:text |op)
                  |L $ %{} :Expr (:at 1710308705051) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1710308705679) (:by |rJoDgvdeG) (:text |let)
                      |L $ %{} :Expr (:at 1710308705903) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Expr (:at 1710308706050) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710308708029) (:by |rJoDgvdeG) (:text |prop-str)
                              |b $ %{} :Expr (:at 1710308709620) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710308709620) (:by |rJoDgvdeG) (:text |turn-string)
                                  |b $ %{} :Leaf (:at 1710308709620) (:by |rJoDgvdeG) (:text |op)
                      |T $ %{} :Expr (:at 1710308721273) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1710308722450) (:by |rJoDgvdeG) (:text |if)
                          |L $ %{} :Expr (:at 1710308962752) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710342403227) (:by |rJoDgvdeG) (:text |.!startsWith)
                              |b $ %{} :Leaf (:at 1710308967789) (:by |rJoDgvdeG) (:text |prop-str)
                              |h $ %{} :Leaf (:at 1710308969237) (:by |rJoDgvdeG) (:text "|\"data-")
                          |P $ %{} :Expr (:at 1710308970336) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1710309143085) (:by |rJoDgvdeG) (:text |->)
                              |b $ %{} :Leaf (:at 1710309145413) (:by |rJoDgvdeG) (:text |target)
                              |h $ %{} :Leaf (:at 1710309148054) (:by |rJoDgvdeG) (:text |.-dataset)
                              |l $ %{} :Expr (:at 1710309148727) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1710344356296) (:by |rJoDgvdeG) (:text |js-delete)
                                  |b $ %{} :Expr (:at 1710309163494) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1710309165097) (:by |rJoDgvdeG) (:text |.!slice)
                                      |X $ %{} :Leaf (:at 1710309168539) (:by |rJoDgvdeG) (:text |prop-str)
                                      |b $ %{} :Leaf (:at 1710309165987) (:by |rJoDgvdeG) (:text |5)
                          |T $ %{} :Expr (:at 1678121938603) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678121938603) (:by |rJoDgvdeG) (:text |let)
                              |b $ %{} :Expr (:at 1678121938603) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1678121938603) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1678121938603) (:by |rJoDgvdeG) (:text |k)
                                      |b $ %{} :Expr (:at 1678121938603) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1678121938603) (:by |rJoDgvdeG) (:text |dashed->camel)
                                          |b $ %{} :Leaf (:at 1710308712670) (:by |rJoDgvdeG) (:text |prop-str)
                                  |b $ %{} :Expr (:at 1678122184040) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1678122387780) (:by |rJoDgvdeG) (:text |;)
                                      |T $ %{} :Leaf (:at 1678122184680) (:by |rJoDgvdeG) (:text |ks)
                                      |b $ %{} :Expr (:at 1678122186014) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1678122201781) (:by |rJoDgvdeG) (:text |prop->attr)
                                          |b $ %{} :Leaf (:at 1710308720024) (:by |rJoDgvdeG) (:text |prop-str)
                              |h $ %{} :Expr (:at 1678121938603) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1678122382216) (:by |rJoDgvdeG) (:text |aset)
                                  |b $ %{} :Leaf (:at 1678121938603) (:by |rJoDgvdeG) (:text |target)
                                  |h $ %{} :Leaf (:at 1678121938603) (:by |rJoDgvdeG) (:text |k)
                                  |l $ %{} :Leaf (:at 1678121938603) (:by |rJoDgvdeG) (:text |nil)
                  |T $ %{} :Expr (:at 1678121748261) (:by |rJoDgvdeG)
                    :data $ {}
                      |L $ %{} :Leaf (:at 1678121756485) (:by |rJoDgvdeG) (:text |:class-name)
                      |P $ %{} :Expr (:at 1678121758385) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678121871900) (:by |rJoDgvdeG) (:text |.!removeAttribute)
                          |b $ %{} :Leaf (:at 1678121764101) (:by |rJoDgvdeG) (:text |target)
                          |h $ %{} :Leaf (:at 1678121765443) (:by |rJoDgvdeG) (:text "|\"class")
                  |X $ %{} :Expr (:at 1678121748261) (:by |rJoDgvdeG)
                    :data $ {}
                      |L $ %{} :Leaf (:at 1678122509754) (:by |rJoDgvdeG) (:text |:href)
                      |P $ %{} :Expr (:at 1678121758385) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678121871900) (:by |rJoDgvdeG) (:text |.!removeAttribute)
                          |b $ %{} :Leaf (:at 1678121764101) (:by |rJoDgvdeG) (:text |target)
                          |h $ %{} :Leaf (:at 1678122511474) (:by |rJoDgvdeG) (:text "|\"href")
                  |b $ %{} :Expr (:at 1678121950452) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678121953348) (:by |rJoDgvdeG) (:text |:inner-text)
                      |b $ %{} :Expr (:at 1678121954426) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678121957068) (:by |rJoDgvdeG) (:text |set!)
                          |b $ %{} :Expr (:at 1678121961331) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1678121966889) (:by |rJoDgvdeG) (:text |.-innerText)
                              |T $ %{} :Leaf (:at 1678121958269) (:by |rJoDgvdeG) (:text |target)
                          |h $ %{} :Leaf (:at 1678121969305) (:by |rJoDgvdeG) (:text "|\"")
                  |e $ %{} :Expr (:at 1678121950452) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678207945986) (:by |rJoDgvdeG) (:text |:innerHTML)
                      |b $ %{} :Expr (:at 1678121954426) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710341288277) (:by |rJoDgvdeG) (:text |set!)
                          |b $ %{} :Expr (:at 1678121961331) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1678207949946) (:by |rJoDgvdeG) (:text |.-innerHTML)
                              |T $ %{} :Leaf (:at 1678121958269) (:by |rJoDgvdeG) (:text |target)
                          |h $ %{} :Leaf (:at 1710341289783) (:by |rJoDgvdeG) (:text "|\"")
                  |h $ %{} :Expr (:at 1678207904032) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678207905636) (:by |rJoDgvdeG) (:text |:checked)
                      |b $ %{} :Expr (:at 1678207907506) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678207909316) (:by |rJoDgvdeG) (:text |set!)
                          |b $ %{} :Expr (:at 1678207910057) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678207912715) (:by |rJoDgvdeG) (:text |.-checked)
                              |b $ %{} :Leaf (:at 1678207913786) (:by |rJoDgvdeG) (:text |target)
                          |h $ %{} :Leaf (:at 1678207915490) (:by |rJoDgvdeG) (:text |false)
                  |l $ %{} :Expr (:at 1678207916390) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678207923119) (:by |rJoDgvdeG) (:text |:disabled)
                      |b $ %{} :Expr (:at 1678207926116) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678207926116) (:by |rJoDgvdeG) (:text |set!)
                          |b $ %{} :Expr (:at 1678207926116) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678207928242) (:by |rJoDgvdeG) (:text |.-disabled)
                              |b $ %{} :Leaf (:at 1678207926116) (:by |rJoDgvdeG) (:text |target)
                          |h $ %{} :Leaf (:at 1678207926116) (:by |rJoDgvdeG) (:text |false)
                  |o $ %{} :Expr (:at 1678207916390) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1678207935207) (:by |rJoDgvdeG) (:text |:selected)
                      |b $ %{} :Expr (:at 1678207926116) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1678207926116) (:by |rJoDgvdeG) (:text |set!)
                          |b $ %{} :Expr (:at 1678207926116) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1678207938275) (:by |rJoDgvdeG) (:text |.-selected)
                              |b $ %{} :Leaf (:at 1678207926116) (:by |rJoDgvdeG) (:text |target)
                          |h $ %{} :Leaf (:at 1678207926116) (:by |rJoDgvdeG) (:text |false)
        |rm-style $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |rm-style)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |target)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1645976496823) (:by |rJoDgvdeG) (:text |&let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-name)
                      |b $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610612206623) (:by |rJoDgvdeG) (:text |turn-string)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |op)
                  |r $ %{} :Expr (:at 1647336897592) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1647336898444) (:by |rJoDgvdeG) (:text |->)
                      |L $ %{} :Expr (:at 1647336899184) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647336899184) (:by |rJoDgvdeG) (:text |.-style)
                          |b $ %{} :Leaf (:at 1647336899184) (:by |rJoDgvdeG) (:text |target)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1710342877962) (:by |rJoDgvdeG) (:text |js-set)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-name)
                          |t $ %{} :Leaf (:at 1710342878860) (:by |rJoDgvdeG) (:text |nil)
        |run-effect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1571584061797) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1571584061797) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1571584061797) (:by |rJoDgvdeG) (:text |run-effect)
              |r $ %{} :Expr (:at 1571584061797) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571584061797) (:by |rJoDgvdeG) (:text |target)
                  |j $ %{} :Leaf (:at 1643709597456) (:by |rJoDgvdeG) (:text |method)
                  |r $ %{} :Leaf (:at 1572505639266) (:by |rJoDgvdeG) (:text |coord)
              |v $ %{} :Expr (:at 1572505527034) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1572505527586) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1572505528559) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572505529273) (:by |rJoDgvdeG) (:text |some?)
                      |j $ %{} :Leaf (:at 1572505530622) (:by |rJoDgvdeG) (:text |target)
                  |T $ %{} :Expr (:at 1571584062993) (:by |rJoDgvdeG)
                    :data $ {}
                      |r $ %{} :Leaf (:at 1643709599808) (:by |rJoDgvdeG) (:text |method)
                      |v $ %{} :Leaf (:at 1571587472632) (:by |rJoDgvdeG) (:text |target)
                  |j $ %{} :Expr (:at 1572505531510) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572507524060) (:by |rJoDgvdeG) (:text |js/console.warn)
                      |j $ %{} :Leaf (:at 1572505606809) (:by |rJoDgvdeG) (:text "|\"Unknown effects target:")
                      |v $ %{} :Leaf (:at 1572505559083) (:by |rJoDgvdeG) (:text |coord)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.render.patch)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event->prop)
                        |x $ %{} :Leaf (:at 1613290226207) (:by |rJoDgvdeG) (:text |get-style-value)
                        |y $ %{} :Leaf (:at 1678122195902) (:by |rJoDgvdeG) (:text |prop->attr)
                |x $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.render.dom)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |make-element)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style->string)
                |y $ %{} :Expr (:at 1513921026110) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1513921101977) (:by |root) (:text |respo.schema.op)
                    |r $ %{} :Leaf (:at 1513921033014) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1513921103387) (:by |root) (:text |op)
    |respo.schema $ %{} :FileEntry
      :defs $ {}
        |Component $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615278579000) (:by |rJoDgvdeG)
            :data $ {}
              |r $ %{} :Leaf (:at 1615278584275) (:by |rJoDgvdeG) (:text |defrecord)
              |v $ %{} :Leaf (:at 1615302393562) (:by |rJoDgvdeG) (:text |Component)
              |x $ %{} :Leaf (:at 1615278594768) (:by |rJoDgvdeG) (:text |:name)
              |y $ %{} :Leaf (:at 1615278597143) (:by |rJoDgvdeG) (:text |:effects)
              |yT $ %{} :Leaf (:at 1615278599071) (:by |rJoDgvdeG) (:text |:tree)
        |Effect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615300095252) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1615302402472) (:by |rJoDgvdeG) (:text |defrecord)
              |j $ %{} :Leaf (:at 1615300095252) (:by |rJoDgvdeG) (:text |Effect)
              |v $ %{} :Leaf (:at 1615300112097) (:by |rJoDgvdeG) (:text |:name)
              |x $ %{} :Leaf (:at 1615300113800) (:by |rJoDgvdeG) (:text |:coord)
              |y $ %{} :Leaf (:at 1615300114700) (:by |rJoDgvdeG) (:text |:args)
              |yT $ %{} :Leaf (:at 1615300116522) (:by |rJoDgvdeG) (:text |:method)
        |Element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1615278616530) (:by |rJoDgvdeG)
            :data $ {}
              |r $ %{} :Leaf (:at 1615278622035) (:by |rJoDgvdeG) (:text |defrecord)
              |v $ %{} :Leaf (:at 1615302384922) (:by |rJoDgvdeG) (:text |Element)
              |x $ %{} :Leaf (:at 1615278628293) (:by |rJoDgvdeG) (:text |:name)
              |y $ %{} :Leaf (:at 1615278629851) (:by |rJoDgvdeG) (:text |:coord)
              |yT $ %{} :Leaf (:at 1615278631573) (:by |rJoDgvdeG) (:text |:attrs)
              |yj $ %{} :Leaf (:at 1615278633572) (:by |rJoDgvdeG) (:text |:style)
              |yr $ %{} :Leaf (:at 1615278635355) (:by |rJoDgvdeG) (:text |:event)
              |yv $ %{} :Leaf (:at 1615278638314) (:by |rJoDgvdeG) (:text |:children)
        |cache-info $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1592128521861) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1592128524075) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1592128521861) (:by |rJoDgvdeG) (:text |cache-info)
              |r $ %{} :Expr (:at 1592128521861) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1592128525060) (:by |rJoDgvdeG) (:text |{})
                  |j $ %{} :Expr (:at 1592128525355) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592128526375) (:by |rJoDgvdeG) (:text |:value)
                      |j $ %{} :Leaf (:at 1592128527024) (:by |rJoDgvdeG) (:text |nil)
                  |r $ %{} :Expr (:at 1592128527554) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592128599812) (:by |rJoDgvdeG) (:text |:initial-loop)
                      |j $ %{} :Leaf (:at 1592128552155) (:by |rJoDgvdeG) (:text |nil)
                  |v $ %{} :Expr (:at 1592128548625) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592128692796) (:by |rJoDgvdeG) (:text |:last-hit)
                      |j $ %{} :Leaf (:at 1592128577658) (:by |rJoDgvdeG) (:text |nil)
                  |x $ %{} :Expr (:at 1592128604110) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592128615161) (:by |rJoDgvdeG) (:text |:hit-times)
                      |j $ %{} :Leaf (:at 1592128619977) (:by |rJoDgvdeG) (:text |0)
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1673971738065) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1673971740268) (:by |rJoDgvdeG) (:text |def)
              |b $ %{} :Leaf (:at 1673971738065) (:by |rJoDgvdeG) (:text |dev?)
              |h $ %{} :Expr (:at 1673971738065) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1673971743158) (:by |rJoDgvdeG) (:text |&=)
                  |X $ %{} :Leaf (:at 1673971752730) (:by |rJoDgvdeG) (:text "|\"dev")
                  |b $ %{} :Expr (:at 1673971745347) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1673971745892) (:by |rJoDgvdeG) (:text |get-env)
                      |b $ %{} :Leaf (:at 1673971747570) (:by |rJoDgvdeG) (:text "|\"mode")
                      |h $ %{} :Leaf (:at 1673971750972) (:by |rJoDgvdeG) (:text "|\"release")
        |effect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1571572970677) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1571572975536) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1571572970677) (:by |rJoDgvdeG) (:text |effect)
              |r $ %{} :Expr (:at 1571572970677) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571572977581) (:by |rJoDgvdeG) (:text |{})
                  |j $ %{} :Expr (:at 1571572977834) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1571572982171) (:by |rJoDgvdeG) (:text |:name)
                      |j $ %{} :Leaf (:at 1571572984492) (:by |rJoDgvdeG) (:text |nil)
                  |n $ %{} :Expr (:at 1571572989655) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1571572993070) (:by |rJoDgvdeG) (:text |:respo-node)
                      |j $ %{} :Leaf (:at 1571572994513) (:by |rJoDgvdeG) (:text |:effect)
                  |r $ %{} :Expr (:at 1571572985180) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1571572987289) (:by |rJoDgvdeG) (:text |:coord)
                      |j $ %{} :Expr (:at 1571572987495) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571572987833) (:by |rJoDgvdeG) (:text |[])
                  |v $ %{} :Expr (:at 1571572996327) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1571572999739) (:by |rJoDgvdeG) (:text |:args)
                      |j $ %{} :Expr (:at 1571573000099) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571573000248) (:by |rJoDgvdeG) (:text |[])
                  |y $ %{} :Expr (:at 1571573004068) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1571573005229) (:by |rJoDgvdeG) (:text |:method)
                      |j $ %{} :Expr (:at 1571573005963) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571573006299) (:by |rJoDgvdeG) (:text |fn)
                          |j $ %{} :Expr (:at 1571573006505) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1647337698863) (:by |rJoDgvdeG) (:text |props)
                              |T $ %{} :Leaf (:at 1571573010966) (:by |rJoDgvdeG) (:text |args)
                          |n $ %{} :Expr (:at 1647337700682) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1647337704305) (:by |rJoDgvdeG) (:text |;)
                              |b $ %{} :Leaf (:at 1647337705017) (:by |rJoDgvdeG) (:text |args)
                              |h $ %{} :Expr (:at 1647337706433) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1647337706433) (:by |rJoDgvdeG) (:text |[])
                                  |b $ %{} :Leaf (:at 1647337706433) (:by |rJoDgvdeG) (:text |action)
                                  |h $ %{} :Leaf (:at 1647337706433) (:by |rJoDgvdeG) (:text |parent)
                                  |l $ %{} :Leaf (:at 1647337706433) (:by |rJoDgvdeG) (:text |at-place?)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1505328949889) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1505328949889) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1505328949889) (:by |root) (:text |respo.schema)
    |respo.test.comp.task $ %{} :FileEntry
      :defs $ {}
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505409022685) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-task)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |span)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:inner-text)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:text)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.test.comp.task)
            |v $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610031637395) (:by |rJoDgvdeG) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |hsl)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540830138479) (:by |root) (:text |respo.core)
                    |j $ %{} :Leaf (:at 1508915183390) (:by |root) (:text |:refer)
                    |r $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1505409019792) (:by |root) (:text |defcomp)
                        |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |span)
    |respo.test.comp.todolist $ %{} :FileEntry
      :defs $ {}
        |comp-todolist $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1505409072010) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-todolist)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511711975290) (:by |rJoDgvdeG) (:text |list->)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-todolist)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619541722376) (:by |rJoDgvdeG) (:text |->)
                      |j $ %{} :Expr (:at 1610189393868) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1610189396310) (:by |rJoDgvdeG) (:text |either)
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |tasks)
                          |j $ %{} :Expr (:at 1610189396797) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610189397962) (:by |rJoDgvdeG) (:text |[])
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |map)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |[])
                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:id)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-task)
                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |task)
        |style-todolist $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |style-todolist)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:color)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:blue)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text "||\"微软雅黑\", Verdana")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.test.comp.todolist)
            |v $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.test.comp.task)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |comp-task)
                |v $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540830145807) (:by |root) (:text |respo.core)
                    |j $ %{} :Leaf (:at 1508915196724) (:by |root) (:text |:refer)
                    |r $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |D $ %{} :Leaf (:at 1505409082913) (:by |root) (:text |defcomp)
                        |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |div)
                        |j $ %{} :Leaf (:at 1511711981544) (:by |rJoDgvdeG) (:text |list->)
    |respo.test.html $ %{} :FileEntry
      :defs $ {}
        |html-quote-test $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511711065520) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511711360457) (:by |rJoDgvdeG) (:text |deftest)
              |j $ %{} :Leaf (:at 1511711065520) (:by |rJoDgvdeG) (:text |html-quote-test)
              |r $ %{} :Expr (:at 1511711362403) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511711363272) (:by |rJoDgvdeG) (:text |let)
                  |j $ %{} :Expr (:at 1511711363498) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1511711363692) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711365003) (:by |rJoDgvdeG) (:text |tree-demo)
                          |j $ %{} :Expr (:at 1511711366585) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1511711367304) (:by |rJoDgvdeG) (:text |div)
                              |j $ %{} :Expr (:at 1511711367835) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711368191) (:by |rJoDgvdeG) (:text |{})
                                  |j $ %{} :Expr (:at 1511711368438) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511711369543) (:by |rJoDgvdeG) (:text |:value)
                                      |j $ %{} :Leaf (:at 1511711381698) (:by |rJoDgvdeG) (:text "||a\"b\"c")
                                  |r $ %{} :Expr (:at 1511711383807) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511711385578) (:by |rJoDgvdeG) (:text |:x)
                                      |r $ %{} :Leaf (:at 1511711852059) (:by |rJoDgvdeG) (:text ||y)
                                  |v $ %{} :Expr (:at 1511711389092) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511711391354) (:by |rJoDgvdeG) (:text |:style)
                                      |j $ %{} :Expr (:at 1511711392425) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1511711392777) (:by |rJoDgvdeG) (:text |{})
                                          |j $ %{} :Expr (:at 1511711393603) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1511711395471) (:by |rJoDgvdeG) (:text |:content)
                                              |j $ %{} :Leaf (:at 1511711399966) (:by |rJoDgvdeG) (:text "||d\"e\"f")
                  |r $ %{} :Expr (:at 1511711404221) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511711405191) (:by |rJoDgvdeG) (:text |testing)
                      |j $ %{} :Leaf (:at 1511711409876) (:by |rJoDgvdeG) (:text "||HTML contains quotes")
                      |r $ %{} :Expr (:at 1511711410891) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711411345) (:by |rJoDgvdeG) (:text |is)
                          |j $ %{} :Expr (:at 1511711411540) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1511711411770) (:by |rJoDgvdeG) (:text |=)
                              |j $ %{} :Expr (:at 1511711412559) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711414239) (:by |rJoDgvdeG) (:text |slurp)
                                  |j $ %{} :Leaf (:at 1511711424284) (:by |rJoDgvdeG) (:text ||test/examples/quote.html)
                              |r $ %{} :Expr (:at 1511711426056) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711427360) (:by |rJoDgvdeG) (:text |make-string)
                                  |j $ %{} :Leaf (:at 1511711429408) (:by |rJoDgvdeG) (:text |tree-demo)
        |html-test $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511711049027) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511711183530) (:by |rJoDgvdeG) (:text |deftest)
              |j $ %{} :Leaf (:at 1511711049027) (:by |rJoDgvdeG) (:text |html-test)
              |r $ %{} :Expr (:at 1511711186214) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511711186657) (:by |rJoDgvdeG) (:text |let)
                  |j $ %{} :Expr (:at 1511711187714) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1511711187879) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711190184) (:by |rJoDgvdeG) (:text |todo-demo)
                          |j $ %{} :Expr (:at 1511711190437) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1511711193568) (:by |rJoDgvdeG) (:text |comp-todolist)
                              |j $ %{} :Leaf (:at 1511711199093) (:by |rJoDgvdeG) (:text |todolist-store)
                  |r $ %{} :Expr (:at 1511711200571) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511711203224) (:by |rJoDgvdeG) (:text |testing)
                      |j $ %{} :Leaf (:at 1511712220676) (:by |rJoDgvdeG) (:text "||test generated HTML from component")
                      |r $ %{} :Expr (:at 1511711211316) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711211593) (:by |rJoDgvdeG) (:text |is)
                          |j $ %{} :Expr (:at 1511711213169) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1511711213352) (:by |rJoDgvdeG) (:text |=)
                              |j $ %{} :Expr (:at 1511711214146) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711215010) (:by |rJoDgvdeG) (:text |slurp)
                                  |j $ %{} :Leaf (:at 1511711221378) (:by |rJoDgvdeG) (:text ||test/examples/demo.html)
                              |r $ %{} :Expr (:at 1511711223959) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711227344) (:by |rJoDgvdeG) (:text |make-string)
                                  |j $ %{} :Leaf (:at 1511711230659) (:by |rJoDgvdeG) (:text |todo-demo)
        |nil-prop-test $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1592797386780) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1592797392969) (:by |rJoDgvdeG) (:text |deftest)
              |j $ %{} :Leaf (:at 1592797386780) (:by |rJoDgvdeG) (:text |nil-prop-test)
              |r $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1592797395431) (:by |rJoDgvdeG) (:text |let)
                  |j $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592797395431) (:by |rJoDgvdeG) (:text |piece)
                          |j $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592797398379) (:by |rJoDgvdeG) (:text |script)
                              |j $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592797395431) (:by |rJoDgvdeG) (:text |{})
                                  |j $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592797405200) (:by |rJoDgvdeG) (:text |:src)
                                      |j $ %{} :Leaf (:at 1592797413123) (:by |rJoDgvdeG) (:text "|\"a.js")
                                  |r $ %{} :Expr (:at 1592797469766) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1592797825951) (:by |rJoDgvdeG) (:text |:defer)
                                      |j $ %{} :Leaf (:at 1592797728705) (:by |rJoDgvdeG) (:text |nil)
                  |r $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592797395431) (:by |rJoDgvdeG) (:text |testing)
                      |j $ %{} :Leaf (:at 1592797426106) (:by |rJoDgvdeG) (:text "||test generate script with nil")
                      |r $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1592797395431) (:by |rJoDgvdeG) (:text |is)
                          |j $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1592797395431) (:by |rJoDgvdeG) (:text |=)
                              |j $ %{} :Leaf (:at 1592797459599) (:by |rJoDgvdeG) (:text "||<script src=\"a.js\"></script>")
                              |r $ %{} :Expr (:at 1592797395431) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1592797395431) (:by |rJoDgvdeG) (:text |make-string)
                                  |j $ %{} :Leaf (:at 1592797395431) (:by |rJoDgvdeG) (:text |piece)
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610285120819) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610285120819) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610285120819) (:by |rJoDgvdeG) (:text |run-tests)
              |n $ %{} :Expr (:at 1610285136810) (:by |rJoDgvdeG)
                :data $ {}
              |t $ %{} :Expr (:at 1610285147781) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610287069658) (:by |rJoDgvdeG) (:text |html-quote-test)
              |u $ %{} :Expr (:at 1610285156489) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610285161757) (:by |rJoDgvdeG) (:text |nil-prop-test)
              |uT $ %{} :Expr (:at 1610285163027) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610285169698) (:by |rJoDgvdeG) (:text |simple-html-test)
              |v $ %{} :Expr (:at 1610285140212) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610289141737) (:by |rJoDgvdeG) (:text |textarea-test)
        |simple-html-test $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511711052310) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511711243596) (:by |rJoDgvdeG) (:text |deftest)
              |j $ %{} :Leaf (:at 1511711052310) (:by |rJoDgvdeG) (:text |simple-html-test)
              |v $ %{} :Expr (:at 1511711246326) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511711246812) (:by |rJoDgvdeG) (:text |let)
                  |j $ %{} :Expr (:at 1511711247077) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1511711247231) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711248778) (:by |rJoDgvdeG) (:text |tree-demo)
                          |j $ %{} :Expr (:at 1511711249744) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1511711250327) (:by |rJoDgvdeG) (:text |html)
                              |j $ %{} :Expr (:at 1511711254430) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711255470) (:by |rJoDgvdeG) (:text |{})
                              |r $ %{} :Expr (:at 1511711258663) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711259228) (:by |rJoDgvdeG) (:text |head)
                                  |j $ %{} :Expr (:at 1511711260060) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511711260423) (:by |rJoDgvdeG) (:text |{})
                                  |r $ %{} :Expr (:at 1511711262910) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511711263719) (:by |rJoDgvdeG) (:text |title)
                                      |j $ %{} :Expr (:at 1511711264912) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1511711265347) (:by |rJoDgvdeG) (:text |{})
                                          |j $ %{} :Expr (:at 1511711265574) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1511711269084) (:by |rJoDgvdeG) (:text |:innerHTML)
                                              |j $ %{} :Leaf (:at 1511711270946) (:by |rJoDgvdeG) (:text ||Demo)
                                  |v $ %{} :Expr (:at 1511711272344) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511711273486) (:by |rJoDgvdeG) (:text |link)
                                      |j $ %{} :Expr (:at 1511711274424) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1511711274784) (:by |rJoDgvdeG) (:text |{})
                                          |j $ %{} :Expr (:at 1511711275046) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1511711275849) (:by |rJoDgvdeG) (:text |:rel)
                                              |j $ %{} :Leaf (:at 1511711278077) (:by |rJoDgvdeG) (:text ||icon)
                                          |r $ %{} :Expr (:at 1511711278957) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1511711280306) (:by |rJoDgvdeG) (:text |:type)
                                              |j $ %{} :Leaf (:at 1511711282747) (:by |rJoDgvdeG) (:text ||image/png)
                                  |x $ %{} :Expr (:at 1511711285280) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511711286184) (:by |rJoDgvdeG) (:text |script)
                                      |j $ %{} :Expr (:at 1511711287716) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1511711288100) (:by |rJoDgvdeG) (:text |{})
                                          |j $ %{} :Expr (:at 1511711288419) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1511711291400) (:by |rJoDgvdeG) (:text |:innerHTML)
                                              |j $ %{} :Leaf (:at 1511711293274) (:by |rJoDgvdeG) (:text ||{})
                              |v $ %{} :Expr (:at 1511711301964) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711302821) (:by |rJoDgvdeG) (:text |body)
                                  |j $ %{} :Expr (:at 1511711304679) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511711305945) (:by |rJoDgvdeG) (:text |{})
                                  |r $ %{} :Expr (:at 1511711306551) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1511711307844) (:by |rJoDgvdeG) (:text |div)
                                      |j $ %{} :Expr (:at 1511711308073) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1511711308546) (:by |rJoDgvdeG) (:text |{})
                                          |j $ %{} :Expr (:at 1511711309684) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1511711309976) (:by |rJoDgvdeG) (:text |:id)
                                              |j $ %{} :Leaf (:at 1511711311170) (:by |rJoDgvdeG) (:text ||app)
                                      |r $ %{} :Expr (:at 1511711313111) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1511711313643) (:by |rJoDgvdeG) (:text |div)
                                          |j $ %{} :Expr (:at 1511711313919) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1511711314530) (:by |rJoDgvdeG) (:text |{})
                  |r $ %{} :Expr (:at 1511711317205) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511711318220) (:by |rJoDgvdeG) (:text |testing)
                      |j $ %{} :Leaf (:at 1511712209700) (:by |rJoDgvdeG) (:text "||test generated HTML from tree")
                      |r $ %{} :Expr (:at 1511711328507) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711328786) (:by |rJoDgvdeG) (:text |is)
                          |j $ %{} :Expr (:at 1511711329109) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1511711329562) (:by |rJoDgvdeG) (:text |=)
                              |j $ %{} :Expr (:at 1511711330162) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711331434) (:by |rJoDgvdeG) (:text |slurp)
                                  |j $ %{} :Leaf (:at 1511711338330) (:by |rJoDgvdeG) (:text ||test/examples/simple.html)
                              |r $ %{} :Expr (:at 1511711340747) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711343880) (:by |rJoDgvdeG) (:text |make-string)
                                  |j $ %{} :Leaf (:at 1511711346103) (:by |rJoDgvdeG) (:text |tree-demo)
        |slurp $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511711043994) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610288943548) (:by |rJoDgvdeG) (:text |defmacro)
              |j $ %{} :Leaf (:at 1511711043994) (:by |rJoDgvdeG) (:text |slurp)
              |r $ %{} :Expr (:at 1511711043994) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511711156163) (:by |rJoDgvdeG) (:text |file-path)
              |v $ %{} :Expr (:at 1610290672989) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610290672989) (:by |rJoDgvdeG) (:text |read-file)
                  |j $ %{} :Leaf (:at 1610290672989) (:by |rJoDgvdeG) (:text |file-path)
        |textarea-test $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1512356927258) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1512356958915) (:by |rJoDgvdeG) (:text |deftest)
              |j $ %{} :Leaf (:at 1512356927258) (:by |rJoDgvdeG) (:text |textarea-test)
              |v $ %{} :Expr (:at 1511711186214) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511711186657) (:by |rJoDgvdeG) (:text |let)
                  |j $ %{} :Expr (:at 1511711187714) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1512357039364) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512357039764) (:by |rJoDgvdeG) (:text |piece)
                          |j $ %{} :Expr (:at 1512357102353) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1512357104007) (:by |rJoDgvdeG) (:text |textarea)
                              |j $ %{} :Expr (:at 1512357104455) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1512357104853) (:by |rJoDgvdeG) (:text |{})
                                  |j $ %{} :Expr (:at 1512357105079) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1512357106286) (:by |rJoDgvdeG) (:text |:value)
                                      |j $ %{} :Leaf (:at 1512357122629) (:by |rJoDgvdeG) (:text "||a\nb\nc\n\"\nd")
                  |r $ %{} :Expr (:at 1511711200571) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511711203224) (:by |rJoDgvdeG) (:text |testing)
                      |j $ %{} :Leaf (:at 1511712220676) (:by |rJoDgvdeG) (:text "||test generated HTML from component")
                      |r $ %{} :Expr (:at 1511711211316) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711211593) (:by |rJoDgvdeG) (:text |is)
                          |j $ %{} :Expr (:at 1511711213169) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1511711213352) (:by |rJoDgvdeG) (:text |=)
                              |f $ %{} :Leaf (:at 1596421840316) (:by |rJoDgvdeG) (:text "||<textarea value=\"a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d\">a&#13;&#10;b&#13;&#10;c&#13;&#10;&quot;&#13;&#10;d</textarea>")
                              |r $ %{} :Expr (:at 1511711223959) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1511711227344) (:by |rJoDgvdeG) (:text |make-string)
                                  |j $ %{} :Leaf (:at 1512357036561) (:by |rJoDgvdeG) (:text |piece)
        |todolist-store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511711037998) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511711890004) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1511711037998) (:by |rJoDgvdeG) (:text |todolist-store)
              |r $ %{} :Expr (:at 1511711037998) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511711901013) (:by |rJoDgvdeG) (:text |[])
                  |j $ %{} :Expr (:at 1511711901332) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511711901811) (:by |rJoDgvdeG) (:text |{})
                      |j $ %{} :Expr (:at 1511711902095) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711903467) (:by |rJoDgvdeG) (:text |:id)
                          |j $ %{} :Leaf (:at 1511711904306) (:by |rJoDgvdeG) (:text |101)
                      |r $ %{} :Expr (:at 1511711905464) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711907148) (:by |rJoDgvdeG) (:text |:text)
                          |j $ %{} :Leaf (:at 1511711908988) (:by |rJoDgvdeG) (:text ||101)
                  |r $ %{} :Expr (:at 1511711901332) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511711901811) (:by |rJoDgvdeG) (:text |{})
                      |j $ %{} :Expr (:at 1511711902095) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711903467) (:by |rJoDgvdeG) (:text |:id)
                          |j $ %{} :Leaf (:at 1511711914637) (:by |rJoDgvdeG) (:text |102)
                      |r $ %{} :Expr (:at 1511711905464) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511711907148) (:by |rJoDgvdeG) (:text |:text)
                          |j $ %{} :Leaf (:at 1511711917510) (:by |rJoDgvdeG) (:text ||102)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1511710949521) (:by |rJoDgvdeG)
          :data $ {}
            |T $ %{} :Leaf (:at 1511710949521) (:by |rJoDgvdeG) (:text |ns)
            |j $ %{} :Leaf (:at 1511710949521) (:by |rJoDgvdeG) (:text |respo.test.html)
            |r $ %{} :Expr (:at 1511711075178) (:by |rJoDgvdeG)
              :data $ {}
                |T $ %{} :Leaf (:at 1511711077503) (:by |rJoDgvdeG) (:text |:require)
                |j $ %{} :Expr (:at 1511711077795) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610285403777) (:by |rJoDgvdeG) (:text |calcit-test.core)
                    |r $ %{} :Leaf (:at 1511711084271) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1511711084778) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1511711086690) (:by |rJoDgvdeG) (:text |deftest)
                        |r $ %{} :Leaf (:at 1511711089580) (:by |rJoDgvdeG) (:text |is)
                        |v $ %{} :Leaf (:at 1511711090467) (:by |rJoDgvdeG) (:text |testing)
                |r $ %{} :Expr (:at 1511711096271) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540830130336) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1511711101326) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1511711101548) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1511711102265) (:by |rJoDgvdeG) (:text |html)
                        |r $ %{} :Leaf (:at 1511711104602) (:by |rJoDgvdeG) (:text |head)
                        |v $ %{} :Leaf (:at 1511711105347) (:by |rJoDgvdeG) (:text |title)
                        |x $ %{} :Leaf (:at 1511711109940) (:by |rJoDgvdeG) (:text |script)
                        |yj $ %{} :Leaf (:at 1511711112888) (:by |rJoDgvdeG) (:text |div)
                        |yr $ %{} :Leaf (:at 1511711113456) (:by |rJoDgvdeG) (:text |link)
                        |yt $ %{} :Leaf (:at 1610289161692) (:by |rJoDgvdeG) (:text |textarea)
                        |yv $ %{} :Leaf (:at 1511711114187) (:by |rJoDgvdeG) (:text |body)
                |w $ %{} :Expr (:at 1511711137930) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1511711141952) (:by |rJoDgvdeG) (:text |respo.render.html)
                    |r $ %{} :Leaf (:at 1511711143036) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1511711143323) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1511711145892) (:by |rJoDgvdeG) (:text |make-string)
    |respo.test.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511710961298) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511710961298) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1511710961298) (:by |rJoDgvdeG) (:text |main!)
              |r $ %{} :Expr (:at 1511710961298) (:by |rJoDgvdeG)
                :data $ {}
              |v $ %{} :Expr (:at 1511710964620) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610285272430) (:by |rJoDgvdeG) (:text |html/run-tests)
              |x $ %{} :Expr (:at 1610285275429) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610285275897) (:by |rJoDgvdeG) (:text |test-pick-attrs)
              |y $ %{} :Expr (:at 1610285278894) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610285284907) (:by |rJoDgvdeG) (:text |test-pick-event)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511712031878) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511712031878) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1511712031878) (:by |rJoDgvdeG) (:text |reload!)
              |r $ %{} :Expr (:at 1511712031878) (:by |rJoDgvdeG)
                :data $ {}
              |v $ %{} :Expr (:at 1511712034731) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1647338731583) (:by |rJoDgvdeG) (:text |println)
                  |b $ %{} :Leaf (:at 1647338741049) (:by |rJoDgvdeG) (:text "|\"reload.")
        |test-pick-attrs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1513783968618) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1513783969980) (:by |root) (:text |deftest)
              |j $ %{} :Leaf (:at 1513783968618) (:by |root) (:text |test-pick-attrs)
              |r $ %{} :Expr (:at 1511711211316) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511711211593) (:by |rJoDgvdeG) (:text |is)
                  |j $ %{} :Expr (:at 1511711213169) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511711213352) (:by |rJoDgvdeG) (:text |=)
                      |f $ %{} :Expr (:at 1513783998155) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1513784000528) (:by |root) (:text |pick-attrs)
                          |j $ %{} :Expr (:at 1513784002422) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1513784002798) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1513784048201) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1513784048810) (:by |root) (:text |:value)
                                  |j $ %{} :Leaf (:at 1513784050061) (:by |root) (:text ||string)
                              |r $ %{} :Expr (:at 1513784199776) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1513784201331) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1513784204720) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1513784205297) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1513784206251) (:by |root)
                                        :data $ {}
                                      |r $ %{} :Leaf (:at 1610286464594) (:by |rJoDgvdeG) (:text |nil)
                      |p $ %{} :Expr (:at 1513784005171) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610289174122) (:by |rJoDgvdeG) (:text |[])
                          |j $ %{} :Expr (:at 1513784006440) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1513784196224) (:by |root) (:text |[])
                              |T $ %{} :Leaf (:at 1513784019017) (:by |root) (:text |:value)
                              |j $ %{} :Leaf (:at 1513784021893) (:by |root) (:text ||string)
        |test-pick-event $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1513784223167) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1513784225457) (:by |root) (:text |deftest)
              |j $ %{} :Leaf (:at 1513784223167) (:by |root) (:text |test-pick-event)
              |r $ %{} :Expr (:at 1513785230464) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1513785231821) (:by |root) (:text |testing)
                  |L $ %{} :Leaf (:at 1513785235070) (:by |root) (:text "||test event")
                  |T $ %{} :Expr (:at 1513784259082) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1513784259718) (:by |root) (:text |let)
                      |L $ %{} :Expr (:at 1513784259931) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1513784260090) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1513784260621) (:by |root) (:text |f)
                              |j $ %{} :Expr (:at 1513784261206) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1513784261517) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1513784261806) (:by |root)
                                    :data $ {}
                                  |r $ %{} :Leaf (:at 1610286477659) (:by |rJoDgvdeG) (:text |nil)
                      |T $ %{} :Expr (:at 1513784237111) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1513784237484) (:by |root) (:text |is)
                          |j $ %{} :Expr (:at 1513784238993) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1513784239156) (:by |root) (:text |=)
                              |j $ %{} :Expr (:at 1513784242284) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1513784243569) (:by |root) (:text |pick-event)
                                  |j $ %{} :Expr (:at 1513784244146) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1513784244493) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1513784244729) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1513784247855) (:by |root) (:text |:value)
                                          |j $ %{} :Leaf (:at 1513784248976) (:by |root) (:text ||a)
                                      |r $ %{} :Expr (:at 1513784249626) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1513784253846) (:by |root) (:text |:on-click)
                                          |j $ %{} :Leaf (:at 1513784264952) (:by |root) (:text |f)
                              |r $ %{} :Expr (:at 1513784268459) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1513784270461) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1513784271913) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1513784276414) (:by |root) (:text |:click)
                                      |j $ %{} :Leaf (:at 1513784276764) (:by |root) (:text |f)
                      |j $ %{} :Expr (:at 1513784237111) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1513784237484) (:by |root) (:text |is)
                          |j $ %{} :Expr (:at 1513784238993) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1513784239156) (:by |root) (:text |=)
                              |j $ %{} :Expr (:at 1513784242284) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1513784243569) (:by |root) (:text |pick-event)
                                  |j $ %{} :Expr (:at 1513784244146) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1513784244493) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1513784244729) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1513784247855) (:by |root) (:text |:value)
                                          |j $ %{} :Leaf (:at 1513784248976) (:by |root) (:text ||a)
                                      |r $ %{} :Expr (:at 1513784249626) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1513784253846) (:by |root) (:text |:on-click)
                                          |j $ %{} :Leaf (:at 1513784264952) (:by |root) (:text |f)
                                      |v $ %{} :Expr (:at 1513784401595) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1513784403254) (:by |root) (:text |:on)
                                          |j $ %{} :Expr (:at 1513784403575) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1513784404710) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1513784405124) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1513784406656) (:by |root) (:text |:input)
                                                  |j $ %{} :Leaf (:at 1513784408578) (:by |root) (:text |f)
                              |r $ %{} :Expr (:at 1513784268459) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1513784270461) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1513784271913) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1513784276414) (:by |root) (:text |:click)
                                      |j $ %{} :Leaf (:at 1513784276764) (:by |root) (:text |f)
                                  |r $ %{} :Expr (:at 1513785461409) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1513785462941) (:by |root) (:text |:input)
                                      |j $ %{} :Leaf (:at 1513785463265) (:by |root) (:text |f)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1511710942011) (:by |rJoDgvdeG)
          :data $ {}
            |T $ %{} :Leaf (:at 1511710942011) (:by |rJoDgvdeG) (:text |ns)
            |j $ %{} :Leaf (:at 1511710942011) (:by |rJoDgvdeG) (:text |respo.test.main)
            |r $ %{} :Expr (:at 1511710992049) (:by |rJoDgvdeG)
              :data $ {}
                |T $ %{} :Leaf (:at 1511710995250) (:by |rJoDgvdeG) (:text |:require)
                |j $ %{} :Expr (:at 1511710995449) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1511710998533) (:by |rJoDgvdeG) (:text |respo.test.html)
                    |r $ %{} :Leaf (:at 1511711799580) (:by |rJoDgvdeG) (:text |:as)
                    |v $ %{} :Leaf (:at 1511711800004) (:by |rJoDgvdeG) (:text |html)
                |v $ %{} :Expr (:at 1513784070951) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1610285022718) (:by |rJoDgvdeG) (:text |calcit-test.core)
                    |r $ %{} :Leaf (:at 1513784075043) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1513784075270) (:by |root)
                      :data $ {}
                        |b $ %{} :Leaf (:at 1513784115309) (:by |root) (:text |deftest)
                        |j $ %{} :Leaf (:at 1513784076853) (:by |root) (:text |testing)
                        |r $ %{} :Leaf (:at 1513784077318) (:by |root) (:text |is)
                |x $ %{} :Expr (:at 1513784025184) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1513784028897) (:by |root) (:text |respo.util.list)
                    |r $ %{} :Leaf (:at 1513784029739) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1513784029972) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1513784033999) (:by |root) (:text |pick-attrs)
                        |r $ %{} :Leaf (:at 1513784040329) (:by |root) (:text |pick-event)
    |respo.util.detect $ %{} :FileEntry
      :defs $ {}
        |=seq $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |=seq)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1517741380629) (:by |root) (:text |xs)
                  |j $ %{} :Leaf (:at 1517741391582) (:by |root) (:text |ys)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |a-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |empty?)
                              |j $ %{} :Leaf (:at 1517741382245) (:by |root) (:text |xs)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |b-empty?)
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |empty?)
                              |j $ %{} :Leaf (:at 1517741394104) (:by |root) (:text |ys)
                  |r $ %{} :Expr (:at 1571933004375) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1571933006970) (:by |rJoDgvdeG) (:text |cond)
                      |T $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |and)
                              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |a-empty?)
                              |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |b-empty?)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |true)
                      |j $ %{} :Expr (:at 1571933017841) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Expr (:at 1571933010820) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571933010820) (:by |rJoDgvdeG) (:text |or)
                              |j $ %{} :Leaf (:at 1571933010820) (:by |rJoDgvdeG) (:text |a-empty?)
                              |r $ %{} :Leaf (:at 1571933010820) (:by |rJoDgvdeG) (:text |b-empty?)
                          |j $ %{} :Leaf (:at 1571933021436) (:by |rJoDgvdeG) (:text |false)
                      |p $ %{} :Expr (:at 1571933248147) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Expr (:at 1571933248683) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571933248966) (:by |rJoDgvdeG) (:text |=)
                              |j $ %{} :Expr (:at 1571933252215) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571933250968) (:by |rJoDgvdeG) (:text |first)
                                  |j $ %{} :Leaf (:at 1571933253271) (:by |rJoDgvdeG) (:text |xs)
                              |r $ %{} :Expr (:at 1571933254002) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571933255401) (:by |rJoDgvdeG) (:text |first)
                                  |j $ %{} :Leaf (:at 1571933256879) (:by |rJoDgvdeG) (:text |ys)
                          |j $ %{} :Expr (:at 1571933257761) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571933259022) (:by |rJoDgvdeG) (:text |recur)
                              |j $ %{} :Expr (:at 1571933261728) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571933261514) (:by |rJoDgvdeG) (:text |rest)
                                  |j $ %{} :Leaf (:at 1571933262428) (:by |rJoDgvdeG) (:text |xs)
                              |r $ %{} :Expr (:at 1571933264395) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1571933265303) (:by |rJoDgvdeG) (:text |rest)
                                  |j $ %{} :Leaf (:at 1571933266436) (:by |rJoDgvdeG) (:text |ys)
                      |s $ %{} :Expr (:at 1571933268071) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610203131445) (:by |rJoDgvdeG) (:text |true)
                          |j $ %{} :Leaf (:at 1571933272140) (:by |rJoDgvdeG) (:text |false)
        |component? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
              |x $ %{} :Expr (:at 1615282394378) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1615282394918) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1615282395333) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615282396666) (:by |rJoDgvdeG) (:text |record?)
                      |j $ %{} :Leaf (:at 1615282397736) (:by |rJoDgvdeG) (:text |x)
                  |T $ %{} :Expr (:at 1615282272526) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1647336474483) (:by |rJoDgvdeG) (:text |&record:matches?)
                      |r $ %{} :Leaf (:at 1615282286494) (:by |rJoDgvdeG) (:text |schema/Component)
                      |v $ %{} :Leaf (:at 1623693490954) (:by |rJoDgvdeG) (:text |x)
                  |j $ %{} :Leaf (:at 1615282399791) (:by |rJoDgvdeG) (:text |false)
        |effect? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1571573031814) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1571573035671) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1571573031814) (:by |rJoDgvdeG) (:text |effect?)
              |r $ %{} :Expr (:at 1571573031814) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571573037460) (:by |rJoDgvdeG) (:text |x)
              |v $ %{} :Expr (:at 1610204171209) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1610204171989) (:by |rJoDgvdeG) (:text |and)
                  |L $ %{} :Expr (:at 1610204172229) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615300165633) (:by |rJoDgvdeG) (:text |record?)
                      |j $ %{} :Leaf (:at 1610204173379) (:by |rJoDgvdeG) (:text |x)
                  |P $ %{} :Expr (:at 1615300167942) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1647338067072) (:by |rJoDgvdeG) (:text |&record:matches?)
                      |b $ %{} :Leaf (:at 1623693521540) (:by |rJoDgvdeG) (:text |schema/Effect)
                      |j $ %{} :Leaf (:at 1615300173274) (:by |rJoDgvdeG) (:text |x)
        |element? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element?)
              |r $ %{} :Expr (:at 1571495569702) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1571495570035) (:by |rJoDgvdeG) (:text |x)
              |v $ %{} :Expr (:at 1610189561239) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1615282774467) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1610189562682) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615282578708) (:by |rJoDgvdeG) (:text |record?)
                      |j $ %{} :Leaf (:at 1610189563418) (:by |rJoDgvdeG) (:text |x)
                  |f $ %{} :Expr (:at 1615282580662) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1647336481758) (:by |rJoDgvdeG) (:text |&record:matches?)
                      |b $ %{} :Leaf (:at 1623693505819) (:by |rJoDgvdeG) (:text |schema/Element)
                      |j $ %{} :Leaf (:at 1615282585004) (:by |rJoDgvdeG) (:text |x)
                  |p $ %{} :Leaf (:at 1615282775914) (:by |rJoDgvdeG) (:text |false)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.detect)
            |r $ %{} :Expr (:at 1615282261936) (:by |rJoDgvdeG)
              :data $ {}
                |T $ %{} :Leaf (:at 1615282263729) (:by |rJoDgvdeG) (:text |:require)
                |j $ %{} :Expr (:at 1615282263985) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1615282269264) (:by |rJoDgvdeG) (:text |respo.schema)
                    |r $ %{} :Leaf (:at 1615282269966) (:by |rJoDgvdeG) (:text |:as)
                    |v $ %{} :Leaf (:at 1615282270722) (:by |rJoDgvdeG) (:text |schema)
    |respo.util.dom $ %{} :FileEntry
      :defs $ {}
        |compare-to-dom! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1529815704509) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1529815704509) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1529815704509) (:by |root) (:text |compare-to-dom!)
              |r $ %{} :Expr (:at 1529815704509) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529815745559) (:by |root) (:text |vdom)
                  |j $ %{} :Leaf (:at 1529815719025) (:by |root) (:text |element)
              |t $ %{} :Expr (:at 1529830816491) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1529831794711) (:by |root) (:text |;)
                  |T $ %{} :Leaf (:at 1529830817270) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1529831117125) (:by |root) (:text "|\"compare")
                  |p $ %{} :Expr (:at 1529831404928) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529831405781) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1529831406862) (:by |root) (:text |vdom)
                  |v $ %{} :Expr (:at 1529831325932) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529831327578) (:by |root) (:text |map)
                      |f $ %{} :Leaf (:at 1529831376412) (:by |root) (:text |:name)
                      |r $ %{} :Expr (:at 1529831352947) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1529831354677) (:by |root) (:text |vals)
                          |T $ %{} :Expr (:at 1529831338020) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529831336570) (:by |root) (:text |:children)
                              |j $ %{} :Leaf (:at 1529831339614) (:by |root) (:text |vdom)
              |u $ %{} :Expr (:at 1529830825546) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1529831797247) (:by |root) (:text |;)
                  |j $ %{} :Leaf (:at 1622299216999) (:by |rJoDgvdeG) (:text |js/console.log)
                  |r $ %{} :Leaf (:at 1529830830791) (:by |root) (:text |element)
              |v $ %{} :Expr (:at 1529830137956) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1529830138579) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1529830138830) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1529830138972) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529830693329) (:by |root) (:text |virtual-name)
                          |j $ %{} :Expr (:at 1529830082251) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1612763463721) (:by |rJoDgvdeG) (:text |turn-string)
                              |T $ %{} :Expr (:at 1529815756068) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529815756999) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1529815761065) (:by |root) (:text |vdom)
                      |j $ %{} :Expr (:at 1529830147620) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529830150553) (:by |root) (:text |real-name)
                          |j $ %{} :Expr (:at 1529830084997) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1622299054814) (:by |rJoDgvdeG) (:text |.!toLowerCase)
                              |T $ %{} :Expr (:at 1529815764305) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529815766925) (:by |root) (:text |.-tagName)
                                  |j $ %{} :Leaf (:at 1529815770517) (:by |root) (:text |element)
                  |T $ %{} :Expr (:at 1529830077150) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1529830078828) (:by |root) (:text |when)
                      |T $ %{} :Expr (:at 1529815746389) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1643708860153) (:by |rJoDgvdeG) (:text |not=)
                          |j $ %{} :Leaf (:at 1529830160483) (:by |root) (:text |virtual-name)
                          |r $ %{} :Leaf (:at 1529830162025) (:by |root) (:text |real-name)
                      |j $ %{} :Expr (:at 1529830120964) (:by |root)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1622299050316) (:by |rJoDgvdeG) (:text |js/console.warn)
                          |n $ %{} :Leaf (:at 1529832761307) (:by |root) (:text "|\"SSR checking: tag names do not match:")
                          |t $ %{} :Expr (:at 1529832830626) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1529832832009) (:by |root) (:text |to-lispy-string)
                              |T $ %{} :Expr (:at 1529831819690) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1529831821094) (:by |root) (:text |dissoc)
                                  |T $ %{} :Leaf (:at 1529831818869) (:by |root) (:text |vdom)
                                  |j $ %{} :Leaf (:at 1529831826495) (:by |root) (:text |:children)
                          |w $ %{} :Leaf (:at 1529831830652) (:by |root) (:text |element)
              |x $ %{} :Expr (:at 1529830186509) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1529830256529) (:by |root) (:text |if)
                  |T $ %{} :Expr (:at 1529815879997) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1643708864097) (:by |rJoDgvdeG) (:text |not=)
                      |j $ %{} :Expr (:at 1529815890320) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1529815891633) (:by |root) (:text |count)
                          |T $ %{} :Expr (:at 1529815885011) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529815887642) (:by |root) (:text |:children)
                              |j $ %{} :Leaf (:at 1529815889892) (:by |root) (:text |vdom)
                      |r $ %{} :Expr (:at 1529815892347) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529815898109) (:by |root) (:text |.-length)
                          |j $ %{} :Expr (:at 1529815900565) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529815903187) (:by |root) (:text |.-children)
                              |j $ %{} :Leaf (:at 1529815904957) (:by |root) (:text |element)
                  |j $ %{} :Expr (:at 1530207068204) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1530207069049) (:by |root) (:text |let)
                      |L $ %{} :Expr (:at 1530207069412) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1530207069767) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1530207074816) (:by |root) (:text |maybe-html)
                              |j $ %{} :Expr (:at 1530206409278) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530206412177) (:by |root) (:text |:innerHTML)
                                  |j $ %{} :Expr (:at 1612763792187) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1612763794288) (:by |rJoDgvdeG) (:text |pairs-map)
                                      |T $ %{} :Expr (:at 1530206849376) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1530206422607) (:by |root) (:text |:attrs)
                                          |j $ %{} :Leaf (:at 1530206418715) (:by |root) (:text |vdom)
                      |T $ %{} :Expr (:at 1530206390299) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1530206391351) (:by |root) (:text |if)
                          |L $ %{} :Expr (:at 1530206405448) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1530206408931) (:by |root) (:text |some?)
                              |j $ %{} :Leaf (:at 1530207080665) (:by |root) (:text |maybe-html)
                          |P $ %{} :Expr (:at 1530207401065) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1530207418509) (:by |root) (:text |when)
                              |L $ %{} :Expr (:at 1530207404007) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530207404196) (:by |root) (:text |=)
                                  |j $ %{} :Leaf (:at 1530207407640) (:by |root) (:text |maybe-html)
                                  |r $ %{} :Expr (:at 1530207408971) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1530207410780) (:by |root) (:text |.-innerHTML)
                                      |j $ %{} :Leaf (:at 1530207414751) (:by |root) (:text |element)
                              |T $ %{} :Expr (:at 1530206424739) (:by |root)
                                :data $ {}
                                  |j $ %{} :Leaf (:at 1622299070602) (:by |rJoDgvdeG) (:text |js/console.warn)
                                  |r $ %{} :Leaf (:at 1530207446749) (:by |root) (:text "|\"SSR checking: noticed dom containing innerHTML:")
                                  |x $ %{} :Leaf (:at 1529815904957) (:by |root) (:text |element)
                          |T $ %{} :Expr (:at 1529831621447) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1529831623231) (:by |root) (:text |do)
                              |T $ %{} :Expr (:at 1529830187657) (:by |root)
                                :data $ {}
                                  |j $ %{} :Leaf (:at 1622299068073) (:by |rJoDgvdeG) (:text |js/console.error)
                                  |r $ %{} :Leaf (:at 1529832736857) (:by |root) (:text "|\"SSR checking: children sizes do not match!")
                              |n $ %{} :Expr (:at 1529831589989) (:by |root)
                                :data $ {}
                                  |b $ %{} :Leaf (:at 1622299062557) (:by |rJoDgvdeG) (:text |js/console.log)
                                  |j $ %{} :Leaf (:at 1529833110265) (:by |root) (:text "|\"virtual:")
                                  |r $ %{} :Expr (:at 1529832862971) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1619541874457) (:by |rJoDgvdeG) (:text |->)
                                      |L $ %{} :Leaf (:at 1529832865919) (:by |root) (:text |vdom)
                                      |P $ %{} :Leaf (:at 1529832970824) (:by |root) (:text |:children)
                                      |R $ %{} :Expr (:at 1530206897760) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1530206899792) (:by |root) (:text |map)
                                          |j $ %{} :Leaf (:at 1530206900401) (:by |root) (:text |last)
                                      |S $ %{} :Expr (:at 1529832872030) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529832871319) (:by |root) (:text |map)
                                          |j $ %{} :Leaf (:at 1529832873317) (:by |root) (:text |:name)
                                      |q $ %{} :Leaf (:at 1529833137299) (:by |root) (:text |to-lispy-string)
                              |r $ %{} :Expr (:at 1529831602840) (:by |root)
                                :data $ {}
                                  |j $ %{} :Leaf (:at 1622299065086) (:by |rJoDgvdeG) (:text |js/console.log)
                                  |r $ %{} :Leaf (:at 1529831610016) (:by |root) (:text "|\"real:")
                                  |v $ %{} :Expr (:at 1529830239274) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529830241412) (:by |root) (:text |.-children)
                                      |j $ %{} :Leaf (:at 1529830243454) (:by |root) (:text |element)
                  |r $ %{} :Expr (:at 1529830403040) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1529830404535) (:by |root) (:text |let)
                      |L $ %{} :Expr (:at 1529830404758) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1529830404885) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529830408632) (:by |root) (:text |real-children)
                              |j $ %{} :Expr (:at 1529830409348) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529830413575) (:by |root) (:text |.-children)
                                  |j $ %{} :Leaf (:at 1529830414836) (:by |root) (:text |element)
                      |T $ %{} :Expr (:at 1529830258663) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529830340182) (:by |root) (:text |loop)
                          |j $ %{} :Expr (:at 1529830340478) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1529830340719) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529830355775) (:by |root) (:text |acc)
                                  |j $ %{} :Leaf (:at 1529830357157) (:by |root) (:text |0)
                              |j $ %{} :Expr (:at 1529830361612) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529830370138) (:by |root) (:text |other-children)
                                  |j $ %{} :Expr (:at 1529830373576) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529830375147) (:by |root) (:text |:children)
                                      |j $ %{} :Leaf (:at 1529830376283) (:by |root) (:text |vdom)
                          |r $ %{} :Expr (:at 1529830380564) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529830571074) (:by |root) (:text |when)
                              |j $ %{} :Expr (:at 1529830383160) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529830386884) (:by |root) (:text |not)
                                  |j $ %{} :Expr (:at 1529830387436) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529830388661) (:by |root) (:text |empty?)
                                      |j $ %{} :Leaf (:at 1529831706758) (:by |root) (:text |other-children)
                              |r $ %{} :Expr (:at 1529830571757) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529830582504) (:by |root) (:text |compare-to-dom!)
                                  |j $ %{} :Expr (:at 1529830904553) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1572885804989) (:by |rJoDgvdeG) (:text |val-of-first)
                                      |T $ %{} :Leaf (:at 1529830588817) (:by |root) (:text |other-children)
                                  |r $ %{} :Expr (:at 1529830593234) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529830594136) (:by |root) (:text |aget)
                                      |j $ %{} :Leaf (:at 1529830598225) (:by |root) (:text |real-children)
                                      |r $ %{} :Leaf (:at 1529830599884) (:by |root) (:text |acc)
                              |v $ %{} :Expr (:at 1529830600883) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529830601679) (:by |root) (:text |recur)
                                  |b $ %{} :Expr (:at 1529830617982) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529830618835) (:by |root) (:text |inc)
                                      |j $ %{} :Leaf (:at 1529830619546) (:by |root) (:text |acc)
                                  |j $ %{} :Expr (:at 1529830602517) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529830605416) (:by |root) (:text |rest)
                                      |j $ %{} :Leaf (:at 1529830607660) (:by |root) (:text |other-children)
        |shared-canvas-context $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511712941660) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511712949104) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1511712941660) (:by |rJoDgvdeG) (:text |shared-canvas-context)
              |r $ %{} :Expr (:at 1511712941660) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511712950763) (:by |rJoDgvdeG) (:text |if)
                  |j $ %{} :Expr (:at 1511712957662) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511712958710) (:by |rJoDgvdeG) (:text |and)
                      |b $ %{} :Expr (:at 1511712974502) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1511713250762) (:by |rJoDgvdeG) (:text |exists?)
                          |T $ %{} :Leaf (:at 1511712978443) (:by |rJoDgvdeG) (:text |js/window)
                      |j $ %{} :Expr (:at 1511712961574) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511713253567) (:by |rJoDgvdeG) (:text |exists?)
                          |j $ %{} :Leaf (:at 1511712981591) (:by |rJoDgvdeG) (:text |js/document)
                  |r $ %{} :Expr (:at 1511713024536) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1622299086906) (:by |rJoDgvdeG) (:text |.!getContext)
                      |T $ %{} :Expr (:at 1511712992552) (:by |rJoDgvdeG)
                        :data $ {}
                          |j $ %{} :Leaf (:at 1643708824587) (:by |rJoDgvdeG) (:text |js/document.createElement)
                          |r $ %{} :Leaf (:at 1511713012654) (:by |rJoDgvdeG) (:text ||canvas)
                      |j $ %{} :Leaf (:at 1511713029620) (:by |rJoDgvdeG) (:text ||2d)
                  |v $ %{} :Leaf (:at 1511713031151) (:by |rJoDgvdeG) (:text |nil)
        |text-width $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1511713039830) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1511713039830) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1511713039830) (:by |rJoDgvdeG) (:text |text-width)
              |r $ %{} :Expr (:at 1511713039830) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511713045646) (:by |rJoDgvdeG) (:text |content)
                  |j $ %{} :Leaf (:at 1511713047834) (:by |rJoDgvdeG) (:text |font-size)
                  |r $ %{} :Leaf (:at 1511713049550) (:by |rJoDgvdeG) (:text |font-family)
              |v $ %{} :Expr (:at 1511713051657) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1511713055827) (:by |rJoDgvdeG) (:text |if)
                  |j $ %{} :Expr (:at 1511713056318) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1511713058409) (:by |rJoDgvdeG) (:text |some?)
                      |j $ %{} :Leaf (:at 1511713059037) (:by |rJoDgvdeG) (:text |shared-canvas-context)
                  |r $ %{} :Expr (:at 1511713085079) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1511713086289) (:by |rJoDgvdeG) (:text |do)
                      |T $ %{} :Expr (:at 1511713060905) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623582254767) (:by |rJoDgvdeG) (:text |set!)
                          |f $ %{} :Expr (:at 1623582250155) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1623582251718) (:by |rJoDgvdeG) (:text |.-font)
                              |T $ %{} :Leaf (:at 1610291320230) (:by |rJoDgvdeG) (:text |shared-canvas-context)
                          |r $ %{} :Expr (:at 1511713072930) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1511713073414) (:by |rJoDgvdeG) (:text |str)
                              |j $ %{} :Leaf (:at 1511713075227) (:by |rJoDgvdeG) (:text |font-size)
                              |r $ %{} :Leaf (:at 1511713077510) (:by |rJoDgvdeG) (:text "||px ")
                              |v $ %{} :Leaf (:at 1511713080294) (:by |rJoDgvdeG) (:text |font-family)
                      |j $ %{} :Expr (:at 1511713086784) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1511713089353) (:by |rJoDgvdeG) (:text |.-width)
                          |j $ %{} :Expr (:at 1511713089893) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1622299097293) (:by |rJoDgvdeG) (:text |.!measureText)
                              |j $ %{} :Leaf (:at 1511713096119) (:by |rJoDgvdeG) (:text |shared-canvas-context)
                              |r $ %{} :Leaf (:at 1511713098126) (:by |rJoDgvdeG) (:text |content)
                  |v $ %{} :Leaf (:at 1511713101132) (:by |rJoDgvdeG) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1511712852131) (:by |rJoDgvdeG)
          :data $ {}
            |T $ %{} :Leaf (:at 1511712852131) (:by |rJoDgvdeG) (:text |ns)
            |j $ %{} :Leaf (:at 1511712852131) (:by |rJoDgvdeG) (:text |respo.util.dom)
            |r $ %{} :Expr (:at 1529830096052) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1529830097485) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1572885810265) (:by |rJoDgvdeG)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572885816497) (:by |rJoDgvdeG) (:text |respo.util.list)
                    |r $ %{} :Leaf (:at 1572885817751) (:by |rJoDgvdeG) (:text |:refer)
                    |v $ %{} :Expr (:at 1572885817942) (:by |rJoDgvdeG)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1572885819155) (:by |rJoDgvdeG) (:text |val-of-first)
    |respo.util.format $ %{} :FileEntry
      :defs $ {}
        |dashed->camel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610029342088) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |dashed->camel)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
              |t $ %{} :Expr (:at 1623582017691) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1623582020543) (:by |rJoDgvdeG) (:text |.!replace)
                  |L $ %{} :Leaf (:at 1623582022718) (:by |rJoDgvdeG) (:text |x)
                  |T $ %{} :Leaf (:at 1623581995024) (:by |rJoDgvdeG) (:text |dashed-letter-pattern)
                  |j $ %{} :Expr (:at 1623582024048) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1623582024418) (:by |rJoDgvdeG) (:text |fn)
                      |j $ %{} :Expr (:at 1623582025583) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623582147255) (:by |rJoDgvdeG) (:text |cc)
                          |j $ %{} :Leaf (:at 1623582159844) (:by |rJoDgvdeG) (:text |pos)
                          |r $ %{} :Leaf (:at 1623582157511) (:by |rJoDgvdeG) (:text |prop)
                      |r $ %{} :Expr (:at 1623582110898) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1623582120166) (:by |rJoDgvdeG) (:text |.!toUpperCase)
                          |T $ %{} :Expr (:at 1623582106149) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1623585089269) (:by |rJoDgvdeG) (:text |aget)
                              |j $ %{} :Leaf (:at 1623582170252) (:by |rJoDgvdeG) (:text |cc)
                              |r $ %{} :Leaf (:at 1623585089775) (:by |rJoDgvdeG) (:text |1)
        |dashed-letter-pattern $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1623581995727) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1623581995727) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1623581995727) (:by |rJoDgvdeG) (:text |dashed-letter-pattern)
              |r $ %{} :Expr (:at 1623581995727) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1623581997824) (:by |rJoDgvdeG) (:text |new)
                  |j $ %{} :Leaf (:at 1623582002058) (:by |rJoDgvdeG) (:text |js/RegExp)
                  |r $ %{} :Leaf (:at 1623582015695) (:by |rJoDgvdeG) (:text "|\"-[a-z]")
                  |v $ %{} :Leaf (:at 1623582013317) (:by |rJoDgvdeG) (:text "|\"g")
        |event->edn $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event->edn)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |L $ %{} :Leaf (:at 1530375390166) (:by |root) (:text |;)
                  |r $ %{} :Leaf (:at 1622299132906) (:by |rJoDgvdeG) (:text |js/console.log)
                  |v $ %{} :Leaf (:at 1552320148254) (:by |rJoDgvdeG) (:text "|\"simplify event:")
                  |x $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
              |x $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |->)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1643704223833) (:by |rJoDgvdeG) (:text |case-default)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |.-type)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                      |n $ %{} :Expr (:at 1643704231982) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1643704231982) (:by |rJoDgvdeG) (:text |{})
                          |j $ %{} :Expr (:at 1643704231982) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1643704231982) (:by |rJoDgvdeG) (:text |:type)
                              |j $ %{} :Expr (:at 1643704231982) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1643704231982) (:by |rJoDgvdeG) (:text |.-type)
                                  |j $ %{} :Leaf (:at 1643704231982) (:by |rJoDgvdeG) (:text |event)
                          |r $ %{} :Expr (:at 1643704231982) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1643704231982) (:by |rJoDgvdeG) (:text |:msg)
                              |j $ %{} :Expr (:at 1643704231982) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1643704231982) (:by |rJoDgvdeG) (:text |str)
                                  |j $ %{} :Leaf (:at 1643704231982) (:by |rJoDgvdeG) (:text "||Unhandled event: ")
                                  |r $ %{} :Expr (:at 1643704231982) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1643704231982) (:by |rJoDgvdeG) (:text |.-type)
                                      |j $ %{} :Leaf (:at 1643704231982) (:by |rJoDgvdeG) (:text |event)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1552320127389) (:by |rJoDgvdeG) (:text "|\"click")
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507356445560) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:type)
                                  |j $ %{} :Leaf (:at 1507356448692) (:by |root) (:text |:click)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1552320130879) (:by |rJoDgvdeG) (:text "|\"keydown")
                          |j $ %{} :Expr (:at 1530375434548) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1530375435372) (:by |root) (:text |merge)
                              |L $ %{} :Expr (:at 1530375435652) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530375442825) (:by |root) (:text |map-keyboard-event)
                                  |j $ %{} :Leaf (:at 1530375445812) (:by |root) (:text |event)
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1507356376452) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:type)
                                      |j $ %{} :Leaf (:at 1507356379176) (:by |root) (:text |:keydown)
                                  |v $ %{} :Expr (:at 1507356381011) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:key-code)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |.-keyCode)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                                  |x $ %{} :Expr (:at 1507356381011) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507356387437) (:by |root) (:text |:keycode)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |.-keyCode)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                      |w $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1552320133881) (:by |rJoDgvdeG) (:text "|\"keypress")
                          |j $ %{} :Expr (:at 1530375468042) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1530375468977) (:by |root) (:text |merge)
                              |L $ %{} :Expr (:at 1530375435652) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530375442825) (:by |root) (:text |map-keyboard-event)
                                  |j $ %{} :Leaf (:at 1530375445812) (:by |root) (:text |event)
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1507356376452) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:type)
                                      |j $ %{} :Leaf (:at 1530375200628) (:by |root) (:text |:keypress)
                      |x $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1552320136533) (:by |rJoDgvdeG) (:text "|\"keyup")
                          |j $ %{} :Expr (:at 1530375476156) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1530375477052) (:by |root) (:text |merge)
                              |L $ %{} :Expr (:at 1530375435652) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530375442825) (:by |root) (:text |map-keyboard-event)
                                  |j $ %{} :Leaf (:at 1530375445812) (:by |root) (:text |event)
                              |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1507356389169) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:type)
                                      |j $ %{} :Leaf (:at 1507356391758) (:by |root) (:text |:keyup)
                      |y $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1552320139392) (:by |rJoDgvdeG) (:text "|\"input")
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507356404325) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:type)
                                  |j $ %{} :Leaf (:at 1507356407422) (:by |root) (:text |:input)
                              |x $ %{} :Expr (:at 1507356412556) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1507356413338) (:by |root) (:text |:value)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |aget)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |.-target)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                                      |r $ %{} :Leaf (:at 1552320113734) (:by |rJoDgvdeG) (:text "|\"value")
                              |y $ %{} :Expr (:at 1552320072402) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1552320075203) (:by |rJoDgvdeG) (:text |:checked)
                                  |j $ %{} :Expr (:at 1552320075484) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610209598100) (:by |rJoDgvdeG) (:text |->)
                                      |j $ %{} :Leaf (:at 1552320081092) (:by |rJoDgvdeG) (:text |event)
                                      |r $ %{} :Leaf (:at 1610209599286) (:by |rJoDgvdeG) (:text |.-target)
                                      |v $ %{} :Leaf (:at 1610209600937) (:by |rJoDgvdeG) (:text |.-checked)
                      |yT $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1552320141663) (:by |rJoDgvdeG) (:text "|\"change")
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507356414848) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:type)
                                  |j $ %{} :Leaf (:at 1507356419468) (:by |root) (:text |:change)
                              |x $ %{} :Expr (:at 1507356422422) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1507356423113) (:by |root) (:text |:value)
                                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |aget)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |.-target)
                                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||value)
                      |yj $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1552320143496) (:by |rJoDgvdeG) (:text "|\"focus")
                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507356425148) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:type)
                                  |j $ %{} :Leaf (:at 1507356430636) (:by |root) (:text |:focus)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:original-event)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507356354798) (:by |root) (:text |:event)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event)
        |event->prop $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event->prop)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||on)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610207670774) (:by |rJoDgvdeG) (:text |turn-string)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
        |event->string $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |event->string)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1623693561429) (:by |rJoDgvdeG) (:text |&str:slice)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612762046832) (:by |rJoDgvdeG) (:text |turn-string)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
                  |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |3)
        |get-style-value $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1613289959451) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1613289959451) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1613289959451) (:by |rJoDgvdeG) (:text |get-style-value)
              |r $ %{} :Expr (:at 1613289959451) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1613290210463) (:by |rJoDgvdeG) (:text |x)
                  |j $ %{} :Leaf (:at 1613289967411) (:by |rJoDgvdeG) (:text |prop)
              |v $ %{} :Expr (:at 1613289979453) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |cond)
                  |j $ %{} :Expr (:at 1613289979453) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1613289979453) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |string?)
                          |j $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |x)
                      |j $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |x)
                  |r $ %{} :Expr (:at 1613289979453) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1613289979453) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1685259466093) (:by |rJoDgvdeG) (:text |tag?)
                          |j $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |x)
                      |j $ %{} :Expr (:at 1613289979453) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |turn-string)
                          |j $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |x)
                  |t $ %{} :Expr (:at 1613289985214) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1613289985706) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613289987237) (:by |rJoDgvdeG) (:text |number?)
                          |j $ %{} :Leaf (:at 1613289987695) (:by |rJoDgvdeG) (:text |x)
                      |j $ %{} :Expr (:at 1613289988432) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613290030893) (:by |rJoDgvdeG) (:text |if)
                          |j $ %{} :Expr (:at 1613290061893) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1622533255104) (:by |rJoDgvdeG) (:text |.!test)
                              |T $ %{} :Leaf (:at 1613290043818) (:by |rJoDgvdeG) (:text |pattern-non-dimension-props)
                              |j $ %{} :Leaf (:at 1613290069472) (:by |rJoDgvdeG) (:text |prop)
                          |r $ %{} :Expr (:at 1613290097704) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1613290096442) (:by |rJoDgvdeG) (:text |str)
                              |j $ %{} :Leaf (:at 1613290098159) (:by |rJoDgvdeG) (:text |x)
                          |v $ %{} :Expr (:at 1613290098976) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1613290099883) (:by |rJoDgvdeG) (:text |str)
                              |j $ %{} :Leaf (:at 1613290100287) (:by |rJoDgvdeG) (:text |x)
                              |r $ %{} :Leaf (:at 1613290101540) (:by |rJoDgvdeG) (:text "|\"px")
                  |u $ %{} :Expr (:at 1704305201912) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1704305204074) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1704305205936) (:by |rJoDgvdeG) (:text |nil?)
                          |b $ %{} :Leaf (:at 1704305206492) (:by |rJoDgvdeG) (:text |x)
                      |b $ %{} :Leaf (:at 1704305208327) (:by |rJoDgvdeG) (:text |nil)
                  |v $ %{} :Expr (:at 1613289979453) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |true)
                      |j $ %{} :Expr (:at 1613289979453) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |str)
                          |j $ %{} :Leaf (:at 1613289979453) (:by |rJoDgvdeG) (:text |x)
        |hsl $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1610031220537) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1610031220537) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1610031220537) (:by |rJoDgvdeG) (:text |hsl)
              |r $ %{} :Expr (:at 1610031220537) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031224002) (:by |rJoDgvdeG) (:text |h)
                  |j $ %{} :Leaf (:at 1610031224438) (:by |rJoDgvdeG) (:text |s)
                  |r $ %{} :Leaf (:at 1610031225177) (:by |rJoDgvdeG) (:text |l)
                  |v $ %{} :Leaf (:at 1613831943199) (:by |rJoDgvdeG) (:text |?)
                  |x $ %{} :Leaf (:at 1613831942099) (:by |rJoDgvdeG) (:text |arg)
              |v $ %{} :Expr (:at 1610031227731) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1610031228187) (:by |rJoDgvdeG) (:text |let)
                  |j $ %{} :Expr (:at 1610031228490) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Expr (:at 1610031229892) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610031230804) (:by |rJoDgvdeG) (:text |a)
                          |b $ %{} :Expr (:at 1613831949128) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1613831951361) (:by |rJoDgvdeG) (:text |either)
                              |j $ %{} :Leaf (:at 1613831952100) (:by |rJoDgvdeG) (:text |arg)
                              |r $ %{} :Leaf (:at 1613831952945) (:by |rJoDgvdeG) (:text |1)
                  |r $ %{} :Expr (:at 1610031240675) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610031242430) (:by |rJoDgvdeG) (:text |str)
                      |j $ %{} :Leaf (:at 1610031247053) (:by |rJoDgvdeG) (:text "|\"hsl(")
                      |n $ %{} :Leaf (:at 1610031265693) (:by |rJoDgvdeG) (:text |h)
                      |r $ %{} :Leaf (:at 1610031249013) (:by |rJoDgvdeG) (:text "|\",")
                      |t $ %{} :Leaf (:at 1610031267424) (:by |rJoDgvdeG) (:text |s)
                      |v $ %{} :Leaf (:at 1610031252250) (:by |rJoDgvdeG) (:text "|\"%,")
                      |w $ %{} :Leaf (:at 1610031269243) (:by |rJoDgvdeG) (:text |l)
                      |x $ %{} :Leaf (:at 1610031258174) (:by |rJoDgvdeG) (:text "|\"%,")
                      |y $ %{} :Leaf (:at 1610031260076) (:by |rJoDgvdeG) (:text |a)
                      |yT $ %{} :Leaf (:at 1610031262445) (:by |rJoDgvdeG) (:text "|\")")
        |map-keyboard-event $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1530375446806) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1530375446806) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1530375446806) (:by |root) (:text |map-keyboard-event)
              |r $ %{} :Expr (:at 1530375446806) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1530375448936) (:by |root) (:text |event)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |{})
                  |y $ %{} :Expr (:at 1530375179034) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1530375180254) (:by |root) (:text |:key)
                      |j $ %{} :Expr (:at 1530375182300) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530375183129) (:by |root) (:text |.-key)
                          |j $ %{} :Leaf (:at 1530375184063) (:by |root) (:text |event)
                  |yT $ %{} :Expr (:at 1530375184716) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1530375185391) (:by |root) (:text |:code)
                      |j $ %{} :Expr (:at 1530375185644) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530375187278) (:by |root) (:text |.-code)
                          |j $ %{} :Leaf (:at 1530375187882) (:by |root) (:text |event)
                  |yj $ %{} :Expr (:at 1530375315159) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1530375319893) (:by |root) (:text |:ctrl?)
                      |j $ %{} :Expr (:at 1530375337222) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530375341264) (:by |root) (:text |.-ctrlKey)
                          |j $ %{} :Leaf (:at 1530375341970) (:by |root) (:text |event)
                  |yr $ %{} :Expr (:at 1530375320383) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1530375321897) (:by |root) (:text |:meta?)
                      |j $ %{} :Expr (:at 1530375343648) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530375347021) (:by |root) (:text |.-metaKey)
                          |j $ %{} :Leaf (:at 1530375348129) (:by |root) (:text |event)
                  |yv $ %{} :Expr (:at 1530375349388) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1530375352314) (:by |root) (:text |:alt?)
                      |j $ %{} :Expr (:at 1530375352591) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530375354741) (:by |root) (:text |.-altKey)
                          |j $ %{} :Leaf (:at 1530375355455) (:by |root) (:text |event)
                  |yx $ %{} :Expr (:at 1530375495540) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1530375498599) (:by |root) (:text |:shift?)
                      |j $ %{} :Expr (:at 1530375498894) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530375500889) (:by |root) (:text |.-shiftKey)
                          |j $ %{} :Leaf (:at 1530375501545) (:by |root) (:text |event)
        |mute-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mute-element)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |update)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:tree)
                      |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mute-element)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |->)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647337009378) (:by |rJoDgvdeG) (:text |assoc)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:event)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610705958058) (:by |rJoDgvdeG) (:text |{})
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:children)
                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |children)
                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1619541650194) (:by |rJoDgvdeG) (:text |->)
                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |children)
                                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |map)
                                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                                          |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |[])
                                              |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |first)
                                                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
                                              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |mute-element)
                                                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |last)
                                                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |entry)
        |pattern-non-dimension-props $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1613290044179) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1613290044179) (:by |rJoDgvdeG) (:text |def)
              |j $ %{} :Leaf (:at 1613290044179) (:by |rJoDgvdeG) (:text |pattern-non-dimension-props)
              |r $ %{} :Expr (:at 1613290044179) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1613290052380) (:by |rJoDgvdeG) (:text |new)
                  |j $ %{} :Leaf (:at 1613290260316) (:by |rJoDgvdeG) (:text |js/RegExp)
                  |r $ %{} :Leaf (:at 1613290055267) (:by |rJoDgvdeG) (:text "|\"acit|ex(?:s|g|n|p|$)|rph|grid|ows|mnc|ntw|ine[ch]|zoo|^ord|itera")
                  |v $ %{} :Leaf (:at 1613290058884) (:by |rJoDgvdeG) (:text "|\"i")
        |prop->attr $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |prop->attr)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
              |t $ %{} :Expr (:at 1592797578919) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1592797582480) (:by |rJoDgvdeG) (:text |when)
                  |j $ %{} :Expr (:at 1592797585686) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1613290810138) (:by |rJoDgvdeG) (:text |includes?)
                      |j $ %{} :Leaf (:at 1592797593975) (:by |rJoDgvdeG) (:text |x)
                      |r $ %{} :Leaf (:at 1592797595144) (:by |rJoDgvdeG) (:text "|\"?")
                  |r $ %{} :Expr (:at 1592797599316) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1592797601269) (:by |rJoDgvdeG) (:text |println)
                      |j $ %{} :Leaf (:at 1613290820637) (:by |rJoDgvdeG) (:text "|\"[Respo] warning: property includes `?` in")
                      |r $ %{} :Leaf (:at 1592797701808) (:by |rJoDgvdeG) (:text |x)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1643704266528) (:by |rJoDgvdeG) (:text |case-default)
                  |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
                  |n $ %{} :Leaf (:at 1643704267885) (:by |rJoDgvdeG) (:text |x)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||class-name)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||class)
                  |v $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||tab-index)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||tabindex)
                  |w $ %{} :Expr (:at 1508595954898) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1508595961204) (:by |root) (:text ||read-only)
                      |j $ %{} :Leaf (:at 1508595964339) (:by |root) (:text ||readonly)
        |purify-element $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |purify-element)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |markup)
              |v $ %{} :Expr (:at 1571496529941) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1571496530907) (:by |rJoDgvdeG) (:text |cond)
                  |T $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil?)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |markup)
                      |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
                  |j $ %{} :Expr (:at 1571496536984) (:by |rJoDgvdeG)
                    :data $ {}
                      |j $ %{} :Expr (:at 1571496536984) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571496536984) (:by |rJoDgvdeG) (:text |component?)
                          |j $ %{} :Leaf (:at 1571496536984) (:by |rJoDgvdeG) (:text |markup)
                      |r $ %{} :Expr (:at 1571496536984) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610191874743) (:by |rJoDgvdeG) (:text |purify-element)
                          |j $ %{} :Expr (:at 1610205059484) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1610205062450) (:by |rJoDgvdeG) (:text |&let)
                              |T $ %{} :Expr (:at 1610205063751) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1610205064267) (:by |rJoDgvdeG) (:text |t)
                                  |T $ %{} :Expr (:at 1571496536984) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1571496536984) (:by |rJoDgvdeG) (:text |:tree)
                                      |j $ %{} :Leaf (:at 1571496536984) (:by |rJoDgvdeG) (:text |markup)
                              |b $ %{} :Expr (:at 1610205067246) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610205077540) (:by |rJoDgvdeG) (:text |when)
                                  |j $ %{} :Expr (:at 1610205069340) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1610205075871) (:by |rJoDgvdeG) (:text |nil?)
                                      |T $ %{} :Leaf (:at 1610205068242) (:by |rJoDgvdeG) (:text |t)
                                  |r $ %{} :Expr (:at 1610205078114) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610205079840) (:by |rJoDgvdeG) (:text |raise)
                                      |j $ %{} :Leaf (:at 1610205088222) (:by |rJoDgvdeG) (:text "|\"tree is empty")
                              |j $ %{} :Leaf (:at 1610205065714) (:by |rJoDgvdeG) (:text |t)
                  |r $ %{} :Expr (:at 1571496544196) (:by |rJoDgvdeG)
                    :data $ {}
                      |D $ %{} :Expr (:at 1571496548004) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1571496548567) (:by |rJoDgvdeG) (:text |element?)
                          |j $ %{} :Leaf (:at 1571496550405) (:by |rJoDgvdeG) (:text |markup)
                      |T $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |->)
                          |j $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |markup)
                          |r $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |update)
                              |j $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |:event)
                              |r $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |purify-events)
                          |v $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |update)
                              |j $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |:children)
                              |r $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |fn)
                                  |j $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |children)
                                  |r $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1619541664060) (:by |rJoDgvdeG) (:text |->)
                                      |j $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |children)
                                      |r $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |map)
                                          |j $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |fn)
                                              |j $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |pair)
                                              |r $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |let)
                                                  |j $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |k)
                                                          |j $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |first)
                                                              |j $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |pair)
                                                      |j $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |child)
                                                          |j $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |last)
                                                              |j $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |pair)
                                                  |r $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |[])
                                                      |j $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |k)
                                                      |r $ %{} :Expr (:at 1610190436936) (:by |rJoDgvdeG)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |purify-element)
                                                          |j $ %{} :Leaf (:at 1610190436936) (:by |rJoDgvdeG) (:text |child)
                  |x $ %{} :Expr (:at 1571496561797) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610191225571) (:by |rJoDgvdeG) (:text |true)
                      |j $ %{} :Expr (:at 1571496565694) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1571496566264) (:by |rJoDgvdeG) (:text |do)
                          |L $ %{} :Expr (:at 1571496566798) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1571496573905) (:by |rJoDgvdeG) (:text |js/console.warn)
                              |j $ %{} :Leaf (:at 1571496593690) (:by |rJoDgvdeG) (:text "|\"Unknown markup during purify:")
                              |r $ %{} :Leaf (:at 1571496596542) (:by |rJoDgvdeG) (:text |markup)
                          |T $ %{} :Leaf (:at 1571496565029) (:by |rJoDgvdeG) (:text |nil)
        |purify-events $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |purify-events)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |events)
              |t $ %{} :Expr (:at 1647336318767) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1647336320095) (:by |rJoDgvdeG) (:text |reduce)
                  |b $ %{} :Leaf (:at 1647336325810) (:by |rJoDgvdeG) (:text |events)
                  |h $ %{} :Expr (:at 1647336330578) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1647336330904) (:by |rJoDgvdeG) (:text |[])
                  |l $ %{} :Expr (:at 1647336331984) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1647336332386) (:by |rJoDgvdeG) (:text |fn)
                      |b $ %{} :Expr (:at 1647336332770) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647336334018) (:by |rJoDgvdeG) (:text |acc)
                          |b $ %{} :Leaf (:at 1647336335781) (:by |rJoDgvdeG) (:text |pair)
                      |h $ %{} :Expr (:at 1647336336916) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1647336337348) (:by |rJoDgvdeG) (:text |if)
                          |b $ %{} :Expr (:at 1647336338715) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1647336339521) (:by |rJoDgvdeG) (:text |some?)
                              |b $ %{} :Expr (:at 1647336340468) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1647336342342) (:by |rJoDgvdeG) (:text |last)
                                  |b $ %{} :Leaf (:at 1647336343161) (:by |rJoDgvdeG) (:text |pair)
                          |h $ %{} :Expr (:at 1647336347185) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1647336348313) (:by |rJoDgvdeG) (:text |conj)
                              |b $ %{} :Leaf (:at 1647336349090) (:by |rJoDgvdeG) (:text |acc)
                              |h $ %{} :Expr (:at 1647336356590) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1647336351308) (:by |rJoDgvdeG) (:text |first)
                                  |b $ %{} :Leaf (:at 1647336355838) (:by |rJoDgvdeG) (:text |pair)
                          |l $ %{} :Leaf (:at 1647336401145) (:by |rJoDgvdeG) (:text |acc)
        |text->html $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |text->html)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |some?)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |->)
                      |j $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |str)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |x)
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623412057455) (:by |rJoDgvdeG) (:text |.replace)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||>)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||&gt;)
                      |v $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1623412059176) (:by |rJoDgvdeG) (:text |.replace)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||<)
                          |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text ||&lt;)
                  |v $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.format)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.detect)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element?)
    |respo.util.list $ %{} :FileEntry
      :defs $ {}
        |map-with-idx $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1517740647082) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1517740647082) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1517740647082) (:by |root) (:text |map-with-idx)
              |r $ %{} :Expr (:at 1517740647082) (:by |root)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1629798929325) (:by |rJoDgvdeG) (:text |xs)
                  |D $ %{} :Leaf (:at 1517740653616) (:by |root) (:text |f)
              |v $ %{} :Expr (:at 1517740654280) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1517740655990) (:by |root) (:text |assert)
                  |j $ %{} :Expr (:at 1517740657660) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1517740660297) (:by |root) (:text |fn?)
                      |j $ %{} :Leaf (:at 1517740660750) (:by |root) (:text |f)
                  |r $ %{} :Leaf (:at 1517740669719) (:by |root) (:text "||expects function")
              |w $ %{} :Expr (:at 1517740348130) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1517740351005) (:by |root) (:text |assert)
                  |j $ %{} :Expr (:at 1517740418648) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610732899020) (:by |rJoDgvdeG) (:text |list?)
                      |j $ %{} :Leaf (:at 1517740420674) (:by |root) (:text |xs)
                  |r $ %{} :Leaf (:at 1610732901697) (:by |rJoDgvdeG) (:text "||expects list")
              |y $ %{} :Expr (:at 1517740693884) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1517740716325) (:by |root) (:text |map-indexed)
                  |b $ %{} :Leaf (:at 1619541781043) (:by |rJoDgvdeG) (:text |xs)
                  |j $ %{} :Expr (:at 1517740700328) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1517740705561) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1517740705932) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1517740713412) (:by |root) (:text |idx)
                          |T $ %{} :Leaf (:at 1517740708821) (:by |root) (:text |x)
                      |r $ %{} :Expr (:at 1517740719484) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1517740720016) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1517740723075) (:by |root) (:text |idx)
                          |r $ %{} :Expr (:at 1517740727169) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1517740727439) (:by |root) (:text |f)
                              |j $ %{} :Leaf (:at 1517740727891) (:by |root) (:text |x)
        |pick-attrs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |pick-attrs)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |nil?)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props)
                  |r $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1610289188345) (:by |rJoDgvdeG) (:text |[])
                  |v $ %{} :Expr (:at 1513782866145) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |->)
                      |X $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |props)
                      |Z $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1725124505162) (:by |rJoDgvdeG) (:text |&map:dissoc)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:on)
                      |a $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1725124506503) (:by |rJoDgvdeG) (:text |&map:dissoc)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:event)
                      |aT $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1725124508743) (:by |rJoDgvdeG) (:text |&map:dissoc)
                          |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:style)
                      |f $ %{} :Expr (:at 1628626097912) (:by |rJoDgvdeG)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1725124404385) (:by |rJoDgvdeG) (:text |&map:to-list)
                      |j $ %{} :Expr (:at 1513782825167) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1513782826536) (:by |root) (:text |filter)
                          |T $ %{} :Expr (:at 1513782780110) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1513782781810) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1513782782091) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1610030592604) (:by |rJoDgvdeG) (:text |pair)
                              |r $ %{} :Expr (:at 1610030574583) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1610030575354) (:by |rJoDgvdeG) (:text |let)
                                  |L $ %{} :Expr (:at 1610030575607) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1610030575769) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610030576152) (:by |rJoDgvdeG) (:text |k)
                                          |j $ %{} :Expr (:at 1610030576678) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1645978936770) (:by |rJoDgvdeG) (:text |nth)
                                              |j $ %{} :Leaf (:at 1610030588079) (:by |rJoDgvdeG) (:text |pair)
                                              |r $ %{} :Leaf (:at 1610030581935) (:by |rJoDgvdeG) (:text |0)
                                      |j $ %{} :Expr (:at 1610030582770) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610030583055) (:by |rJoDgvdeG) (:text |v)
                                          |j $ %{} :Expr (:at 1610030583593) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1645978938444) (:by |rJoDgvdeG) (:text |nth)
                                              |j $ %{} :Leaf (:at 1610030589668) (:by |rJoDgvdeG) (:text |pair)
                                              |r $ %{} :Leaf (:at 1610030584897) (:by |rJoDgvdeG) (:text |1)
                                  |T $ %{} :Expr (:at 1513782875538) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1513782876303) (:by |root) (:text |not)
                                      |T $ %{} :Expr (:at 1513782786281) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1610290999267) (:by |rJoDgvdeG) (:text |starts-with?)
                                          |r $ %{} :Expr (:at 1610290981042) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1610290981042) (:by |rJoDgvdeG) (:text |turn-string)
                                              |j $ %{} :Leaf (:at 1610290981042) (:by |rJoDgvdeG) (:text |k)
                                          |v $ %{} :Leaf (:at 1610291003188) (:by |rJoDgvdeG) (:text "|\"on-")
                      |r $ %{} :Expr (:at 1504774121421) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1551289841027) (:by |rJoDgvdeG) (:text |sort)
                          |j $ %{} :Expr (:at 1551289841746) (:by |rJoDgvdeG)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1551289842831) (:by |rJoDgvdeG) (:text |fn)
                              |L $ %{} :Expr (:at 1551289843567) (:by |rJoDgvdeG)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1551289843912) (:by |rJoDgvdeG) (:text |x)
                                  |j $ %{} :Leaf (:at 1551289844955) (:by |rJoDgvdeG) (:text |y)
                              |T $ %{} :Expr (:at 1551289846168) (:by |rJoDgvdeG)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1647337394333) (:by |rJoDgvdeG) (:text |&compare)
                                  |T $ %{} :Expr (:at 1551289849344) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1725124468851) (:by |rJoDgvdeG) (:text |nth)
                                      |j $ %{} :Leaf (:at 1551289857807) (:by |rJoDgvdeG) (:text |x)
                                      |n $ %{} :Leaf (:at 1725124469986) (:by |rJoDgvdeG) (:text |0)
                                  |j $ %{} :Expr (:at 1551289851905) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1725124474026) (:by |rJoDgvdeG) (:text |nth)
                                      |T $ %{} :Leaf (:at 1551289855532) (:by |rJoDgvdeG) (:text |y)
                                      |b $ %{} :Leaf (:at 1725124476248) (:by |rJoDgvdeG) (:text |0)
        |pick-event $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1513782743303) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1513782743303) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1513782743303) (:by |root) (:text |pick-event)
              |r $ %{} :Expr (:at 1513782743303) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1513782746280) (:by |root) (:text |props)
              |v $ %{} :Expr (:at 1615647772733) (:by |rJoDgvdeG)
                :data $ {}
                  |D $ %{} :Leaf (:at 1615647773817) (:by |rJoDgvdeG) (:text |if)
                  |L $ %{} :Expr (:at 1615647775126) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615647775452) (:by |rJoDgvdeG) (:text |nil?)
                      |j $ %{} :Leaf (:at 1615647776182) (:by |rJoDgvdeG) (:text |props)
                  |P $ %{} :Expr (:at 1615647781902) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1615647782488) (:by |rJoDgvdeG) (:text |{})
                  |T $ %{} :Expr (:at 1513782746786) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1513784377351) (:by |root) (:text |merge)
                      |j $ %{} :Expr (:at 1610188529146) (:by |rJoDgvdeG)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1610188531976) (:by |rJoDgvdeG) (:text |either)
                          |T $ %{} :Expr (:at 1513782769122) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1725124568608) (:by |rJoDgvdeG) (:text |&map:get)
                              |j $ %{} :Leaf (:at 1513782771092) (:by |root) (:text |props)
                              |n $ %{} :Leaf (:at 1725124521725) (:by |rJoDgvdeG) (:text |:on)
                          |j $ %{} :Expr (:at 1610188532564) (:by |rJoDgvdeG)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1610188532905) (:by |rJoDgvdeG) (:text |{})
                      |r $ %{} :Expr (:at 1513782771764) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1619539970233) (:by |rJoDgvdeG) (:text |->)
                          |j $ %{} :Leaf (:at 1513782779468) (:by |root) (:text |props)
                          |t $ %{} :Expr (:at 1513783773275) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1628626168147) (:by |rJoDgvdeG) (:text |map-kv)
                              |j $ %{} :Expr (:at 1513783774099) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1513783774679) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1513783776268) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1628626157136) (:by |rJoDgvdeG) (:text |k)
                                      |j $ %{} :Leaf (:at 1628626157854) (:by |rJoDgvdeG) (:text |v)
                                  |r $ %{} :Expr (:at 1628626143915) (:by |rJoDgvdeG)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1628626145620) (:by |rJoDgvdeG) (:text |if)
                                      |L $ %{} :Expr (:at 1628626147598) (:by |rJoDgvdeG)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1628626147598) (:by |rJoDgvdeG) (:text |starts-with?)
                                          |j $ %{} :Expr (:at 1628626147598) (:by |rJoDgvdeG)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1628626147598) (:by |rJoDgvdeG) (:text |turn-string)
                                              |j $ %{} :Leaf (:at 1628626147598) (:by |rJoDgvdeG) (:text |k)
                                          |r $ %{} :Leaf (:at 1628626147598) (:by |rJoDgvdeG) (:text ||on-)
                                      |T $ %{} :Expr (:at 1513783780024) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1513783782433) (:by |root) (:text |[])
                                          |j $ %{} :Expr (:at 1513783784878) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1685259479086) (:by |rJoDgvdeG) (:text |turn-tag)
                                              |j $ %{} :Expr (:at 1513783794332) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1623693552430) (:by |rJoDgvdeG) (:text |&str:slice)
                                                  |T $ %{} :Expr (:at 1513783787120) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1610188492570) (:by |rJoDgvdeG) (:text |turn-string)
                                                      |j $ %{} :Leaf (:at 1513784313055) (:by |root) (:text |k)
                                                  |j $ %{} :Leaf (:at 1513783800894) (:by |root) (:text |3)
                                          |r $ %{} :Leaf (:at 1513783791555) (:by |root) (:text |v)
                                      |j $ %{} :Leaf (:at 1628626150149) (:by |rJoDgvdeG) (:text |nil)
        |val-exists? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1504774121421) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |val-exists?)
              |r $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |pair)
              |v $ %{} :Expr (:at 1504774121421) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |some?)
                  |j $ %{} :Expr (:at 1504774121421) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |last)
                      |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |pair)
        |val-of-first $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1572885625576) (:by |rJoDgvdeG)
            :data $ {}
              |T $ %{} :Leaf (:at 1572885625576) (:by |rJoDgvdeG) (:text |defn)
              |j $ %{} :Leaf (:at 1572885625576) (:by |rJoDgvdeG) (:text |val-of-first)
              |r $ %{} :Expr (:at 1572885625576) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572885629777) (:by |rJoDgvdeG) (:text |x)
              |v $ %{} :Expr (:at 1572885630329) (:by |rJoDgvdeG)
                :data $ {}
                  |T $ %{} :Leaf (:at 1572885631743) (:by |rJoDgvdeG) (:text |last)
                  |j $ %{} :Expr (:at 1572885632356) (:by |rJoDgvdeG)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1572885634056) (:by |rJoDgvdeG) (:text |first)
                      |j $ %{} :Leaf (:at 1572885732132) (:by |rJoDgvdeG) (:text |x)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1504774121421) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.list)
            |r $ %{} :Expr (:at 1504774121421) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1504774121421) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |respo.util.detect)
                    |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1504774121421) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |component?)
                        |r $ %{} :Leaf (:at 1504774121421) (:by |root) (:text |element?)
  :users $ {}
    |rJoDgvdeG $ {} (:avatar nil) (:id |rJoDgvdeG) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
