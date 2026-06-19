#import "@preview/basic-resume:0.2.9": *

#let name = "Rohan Bhargava"
#let phone = "408-694-2524"
#let email = "rohan.bhargava@gmail.com"
#let linkedin = "linkedin.com/in/rohan-b"
#let github = "github.com/rohan-b"

#show: resume.with(
  author: name,
  phone: phone,
  email: email,
  linkedin: linkedin,
  github: github,
  accent-color: "#000000",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
  font-size: 10pt,
)

== Education

#edu(
  institution: "UC San Diego",
  location: "San Diego, California",
  dates: dates-helper(start-date: "Aug 2015", end-date: "Jun 2019"),
  degree: "Bachelor of Science in Mathematics and Computer Science, Cum Laude",
)

== Experience

#work(
  title: "Founding Engineer",
  location: "San Francisco, CA",
  company: "Nevoya",
  dates: dates-helper(start-date: "Aug 2024", end-date: "Present"),
)
- Founding engineer on a full-stack logistics management platform (FastAPI, React, Postgres, AWS ECS) for an EV trucking fleet, authoring 35% of all commits over 1.5+ years and standing up the initial architecture — auth, database migrations, CI/CD pipelines, deployment infrastructure, and the core dispatch domain models
- Designed and built an in-house dispatch optimization engine using Google OR-Tools CP-SAT, modeling shift assignment as a VRP with circuit constraints, time-window propagation, hours-of-service deductions, shift-duration bounds, and tiered load prioritization — replacing a third-party HERE Tour Planning integration with a solver matched to real fleet constraints, backed by a greedy two-pass fallback and a time-dependent travel-time revalidation pass
- Migrated Samsara geofence event processing from long-running ECS workers to SQS-triggered AWS Lambda (retiring ~1,300 lines of worker code), with batchItemFailures partial-batch retries, module-scope init to amortize cold starts, and shared processor classes so the FastAPI BackgroundTasks path and Lambda handlers delegate to the same code
- Built a geofence-to-milestone matching system using backtracking to enumerate feasible candidate timelines from noisy telematics data and dynamic programming to optimally assign actual arrival/departure times to planned stops — reducing load-level time conflicts from 0.97% to 0.09% with microsecond-level matching per load
- Integrated Gemini AI for automated rate confirmation parsing, auto-extracting stops, locations, and appointment times from uploaded PDFs with geocoding-based location matching and fuzzy deduplication; shipped end-to-end document management with S3 storage, AI summarization, and a Vendorflow integration for driver text messaging
- Designed a parallel operational tracking domain for non-load driver work (maintenance, trailer repositioning, yard reports), extending dispatch infrastructure with dual foreign keys and check constraints to share stop and leg semantics without model inheritance — eliminating a major blind spot in driver activity tracking

#work(
  title: "Senior Software Engineer",
  location: "San Francisco, CA",
  company: "Benchling",
  dates: dates-helper(start-date: "Aug 2020", end-date: "Aug 2024"),
)
- Technical lead for a 6 person scrum team, responsible for roadmap planning and architecture design
- Drove implementation of a domain definition platform (Domain Graph) for all engineering teams, enabling teams to define and document external facing models. This streamlined internal development and helped align the company around domain driven design best practices.
- Developed tooling to dynamically generate internal and external REST and GraphQL APIs from the Domain Graph. Estimated to have cut down engineering time by 6+ months on a recent large project.
- Architected a large scale data backfill and database migration across 11 billion rows in Postgres, leveraging celery for async distributed jobs to ensure the backfill didn't affect production workflows
- Integrated a new websocket architecture to enable realtime collaboration in the notebook product, allowing for the launch of new product verticals and user experiences — this feature has been used by 200k+ users and up to 50 concurrent users in the same notebook document.
- Redesigned the spreadsheet evaluation system for our notebook product and introduced caching mechanisms, reducing P90 load times from up to 3 minutes to less than 1 second, significantly enhancing performance and user experience

#work(
  title: "Software Engineer",
  location: "San Francisco, CA",
  company: "Uber",
  dates: dates-helper(start-date: "Jul 2019", end-date: "Aug 2020"),
)
- Implemented a new financial ledger service to store \$1B+ of Uber Cash using Kafka, CassandraDB, and Docstore leading to improved reliability and performance
- Built a microservice to migrate millions of users to the new ledger with 0 downtime or user impact
- Designed a new reporting service to compile daily transaction data across both the old and new ledgers to share with partner banks, unblocking \$106M in revenue

#work(
  title: "Machine Learning Research Assistant",
  location: "San Diego, CA",
  company: "Center for Peace and Security Studies",
  dates: dates-helper(start-date: "Jan 2019", end-date: "Jul 2019"),
)
- Investigated optimal methods for vector embedding historical events to utilize in downstream machine learning applications, used Python and PyTorch
- Developed a proof of concept leveraging Poincare embeddings to model the hierarchical relationships within historical event data. This approach captured a greater level of detail with fewer dimensions than traditional linear embeddings

== Projects

#project(
  name: "Wine AI",
  role: "Python, numpy, PyTorch",
)
- Built and trained a Convolutional Neural Network to predict the varietal of wine based on a review
- Iterated on different embeddings for the review corpus eventually settling upon a Word2Vec based embedding resulting in 82% accuracy

== Technical Skills

- *Languages:* Java, Python, Go, SQL (Postgres), JavaScript, TypeScript, C++
- *Developer Tools:* Git, Docker, Terraform, AWS, Datadog, Sentry
- *Libraries:* FastAPI, React, GraphQL, SQLAlchemy, PyTorch
- *Interests:* Coffee Roasting, Running
