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
- Founding engineer for an AI-native EV trucking logistics platform; built the initial product and engineering foundation across FastAPI, React, Postgres, and AWS
- Built a multi-agent runtime on AWS Bedrock AgentCore, enabling first-party AI agents and human-operated connectors to safely share logistics workflows through a dual-auth MCP tool layer
- Built an in-house dispatch optimization engine using Google OR-Tools CP-SAT, modeling driver shifts as a VRP with time windows, hours-of-service constraints, shift-duration bounds, and load prioritization tailored to real fleet operations
- Migrated Samsara geofence processing from long-running ECS workers to SQS-triggered Lambda, retiring ~1,300 lines of worker code and improving retry isolation with partial-batch failure handling
- Built Gemini-powered rate confirmation parsing that extracted stops, locations, and appointment times from uploaded PDFs, using geocoding and fuzzy matching to deduplicate operational data
- Modeled non-load driver activity — maintenance, trailer repositioning, yard reports — as a first-class operational tracking domain, reusing dispatch stop and leg semantics while avoiding brittle model inheritance

#work(
  title: "Senior Software Engineer",
  location: "San Francisco, CA",
  company: "Benchling",
  dates: dates-helper(start-date: "Aug 2020", end-date: "Aug 2024"),
)
- Technical lead for a 6-person platform team, owning roadmap planning, architecture design, and execution across domain modeling and notebook infrastructure initiatives
- Led implementation of Domain Graph, a company-wide platform for defining, documenting, and generating external-facing product models, aligning engineering teams around domain-driven design
- Built tooling to generate internal and external REST and GraphQL APIs from Domain Graph definitions, saving an estimated 6+ months of engineering effort on a major product initiative
- Architected a large-scale Postgres migration and backfill across 11B rows using Celery distributed jobs, completing the migration without disrupting production workflows
- Integrated a new WebSocket architecture for real-time notebook collaboration, enabling new product verticals and supporting 200k+ users with up to 50 concurrent collaborators in a document
- Redesigned notebook spreadsheet evaluation and caching, reducing P90 load times from up to 3 minutes to under 1 second

#work(
  title: "Software Engineer",
  location: "San Francisco, CA",
  company: "Uber",
  dates: dates-helper(start-date: "Jul 2019", end-date: "Aug 2020"),
)
- Implemented a financial ledger service for \$1B+ in Uber Cash balances using Kafka, Cassandra, and Docstore, improving reliability and transaction performance
- Built a migration service that moved millions of users to the new ledger with zero downtime and no user-facing impact
- Designed a reporting service that compiled daily transaction data across legacy and new ledgers for partner banks, unblocking \$106M in revenue

== Technical Skills

- *Languages:* Python, TypeScript, JavaScript, SQL/Postgres, Go, Java, C++
- *Backend/Data:* FastAPI, SQLAlchemy, GraphQL, Celery, OR-Tools, PyTorch
- *Infrastructure:* AWS ECS, Lambda, SQS, Bedrock, Docker, Terraform, Datadog, Sentry
- *Frontend:* React
- *Interests:* Coffee Roasting, Running
