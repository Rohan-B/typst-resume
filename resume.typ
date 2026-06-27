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

== Experience

#work(
  title: "Founding Engineer",
  location: "Los Angeles, CA",
  company: "Nevoya",
  dates: dates-helper(start-date: "Aug 2024", end-date: "Present"),
)
- Founding engineer for an AI-native EV trucking logistics platform, building the core FastAPI, React, Postgres, and AWS architecture from zero to live fleet operations supporting 50+ trucks
- Architected and deployed a production multi-agent runtime on AWS Bedrock AgentCore, automating dozens of manual workflows across dispatch, fleet monitoring, and billing with human-in-the-loop approvals, auditability, and escalation paths
- Built an in-house dispatch optimization engine with Google OR-Tools CP-SAT, reducing daily dispatch planning from 3 hours to 10 minutes while satisfying hours-of-service, shift-duration, and load-priority constraints
- Delivered Gemini-powered rate confirmation parsing to extract load details from PDFs, cutting manual load-entry time by ~90% via geocoding, fuzzy matching, and operational data deduplication
- Established production infrastructure end to end, building Terraform-managed AWS and GCP environments, CI/CD pipelines, continuous deployment, and observability

#work(
  title: "Senior Software Engineer",
  location: "San Francisco, CA",
  company: "Benchling",
  dates: dates-helper(start-date: "Aug 2020", end-date: "Aug 2024"),
)
- Technical lead for a 6-person platform team, owning roadmap planning, architecture design, and execution across domain modeling and notebook infrastructure initiatives
- Led implementation of Domain Graph, a company-wide platform for defining, documenting, and generating external facing product models, aligning engineering teams around domain-driven design
- Built tooling to generate internal and external REST and GraphQL APIs from Domain Graph definitions, saving an estimated 6+ months of engineering effort on a major product initiative
- Redesigned notebook spreadsheet evaluation and caching, reducing P90 load times from up to 3 minutes to under 1 second
- Architected a large-scale Postgres migration and backfill across 11B rows using Celery distributed jobs, completing the migration without disrupting production workflows
- Designed and integrated a new WebSocket architecture for real-time notebook collaboration, enabling new product verticals and supporting 200k+ users with up to 50 concurrent collaborators in a document

#work(
  title: "Software Engineer",
  location: "San Francisco, CA",
  company: "Uber",
  dates: dates-helper(start-date: "Jul 2019", end-date: "Aug 2020"),
)
- Implemented a financial ledger service for \$1B+ in Uber Cash balances using Kafka, Cassandra, and Docstore, improving reliability and transaction performance
- Built a migration service that moved millions of users to the new ledger with zero downtime and no user-facing impact
- Designed a reporting service that compiled daily transaction data across legacy and new ledgers for partner banks, unblocking \$106M in revenue

== Education

#edu(
  institution: "UC San Diego",
  location: "San Diego, California",
  dates: dates-helper(start-date: "Aug 2015", end-date: "Jun 2019"),
  degree: "Bachelor of Science in Mathematics and Computer Science, Cum Laude",
)

== Technical Skills

- *Languages:* Python, TypeScript, JavaScript, SQL, Go, Java, C++
- *Frameworks/Data:* FastAPI, React, SQLAlchemy, PostgreSQL, GraphQL, Celery, OR-Tools, PyTorch
- *Infrastructure:* AWS ECS, Lambda, SQS, Bedrock, GCP, Docker, Terraform, Datadog, Sentry
- *Interests:* Coffee Roasting, Running
