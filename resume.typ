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
