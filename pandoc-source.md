---
bibliography: ref-test.bib
---

# Introduction

Lorem ipsum [@partridge2011forty] dolor sit amet, consectetur adipisicing elit. Voluptatem quam,
blanditiis, exercitationem repellat corporis quidem consectetur quae excepturi
dignissimos sequi ipsa, beatae animi ipsam sit perspiciatis accusantium amet,
facere? Rem!

![Masjid al-Nabawi, Medinah](figures/madinah.jpg){width=100%}

## Background

@7282364 said Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quasi blanditiis
vero placeat, aspernatur voluptatibus reiciendis incidunt suscipit, accusamus
aperiam modi, saepe quisquam aliquam harum ipsa! Suscipit aspernatur dolorum
nobis, molestiae?

```java
public class Test {
    static Set<Thread> updateThreads = new HashSet<Thread>();

    public static void main(String[] args) {
        ConcurrentMap<Integer, String> concurrentMap = new ConcurrentHashMap<Integer, String>();

        for (int i = 0; i < 1000; i++) {
            startUpdateThread(i, concurrentMap);
        }

        for (Map.Entry<Integer, String> entry : concurrentMap.entrySet()) {
            System.out.println("Key :" + entry.getKey() + " Value:" + entry.getValue());
        }

        for (Thread thread : updateThreads) {
            thread.interrupt();
        }
    }
}
```

# Literature Review

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit assumenda unde
ex voluptatem adipisci excepturi, labore obcaecati asperiores expedita
deleniti consequuntur, sunt alias cum vero repellat omnis earum nobis! Hic.

## Types of Things

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis, similique
explicabo. Architecto nam sit dolor vitae accusantium dolore eum reprehenderit
repellat debitis harum totam minus, inventore sint corporis magni, aliquam.

### First Thing

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam nihil a
eaque pariatur, vero nobis accusamus voluptates nulla, ipsum, nisi enim. A cum
aspernatur, repellat quo ut omnis repellendus cumque!

### Second Thing

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam nihil a
eaque pariatur, vero nobis accusamus voluptates nulla, ipsum, nisi enim. A cum
aspernatur, repellat quo ut omnis repellendus cumque!

### Third Thing

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam nihil a
eaque pariatur, vero nobis accusamus voluptates nulla, ipsum, nisi enim. A cum
aspernatur, repellat quo ut omnis repellendus cumque!

\begin{algorithm}
\caption{My algorithm}\label{euclid}
\begin{algorithmic}[1]
\Procedure{MyProcedure}{}
\State $\textit{stringlen} \gets \text{length of }\textit{string}$
\State $i \gets \textit{patlen}$
\emph{top}:
\If {$i > \textit{stringlen}$} \Return false
\EndIf
\State $j \gets \textit{patlen}$
\emph{loop}:
\If {$\textit{string}(i) = \textit{path}(j)$}
\State $j \gets j-1$.
\State $i \gets i-1$.
\State \textbf{goto} \emph{loop}.
\State \textbf{close};
\EndIf
\State $i \gets i+\max(\textit{delta}_1(\textit{string}(i)),\textit{delta}_2(j))$.
\State \textbf{goto} \emph{top}.
\EndProcedure
\end{algorithmic}
\end{algorithm}

#### Some Really Small Thing

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate eius
reiciendis tempore nesciunt velit corporis totam iusto fugiat exercitationem
veritatis, sit, sint aliquid laudantium consequuntur quasi, architecto
obcaecati, ipsam facere!

: The Table's Caption

| sdasd     | adasdas | sadasds                      |
|-----------|---------|------------------------------|
| asdasdasd | dasd    | asd                          |
| d         | dasdas  | assdasdasdasdasdasdasdasdasd |

# Conclusion

Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque,
veritatis, commodi! Ab molestiae qui modi vero dolorem quam asperiores
aliquid, quo nemo, saepe suscipit. Corrupti, saepe. Unde voluptate, sint
quasi.

