# L8: Document Processing - PDFs, DOCX & Markup

## What is this lesson about?

Learn to work with **documents**! Convert PDFs and Word docs to web formats, extract information, and create HTML pages.

## The Challenge

Ask Claude Code to:
1. **Read PDF files** in the `data/` folder
2. **Read DOCX files** in the `data/` folder
3. **Convert them to Markdown** (intermediate format)
4. **Convert Markdown to HTML** (final format)
5. **Explain the conversion process**
6. **Create an HTML presentation** about document processing

## Data Folder Structure

```
L8/
├── data/
│   ├── pdf/           # PDF files to convert
│   │   ├── sample-report.pdf
│   │   ├── uk-government-report.pdf
│   │   └── ...
│   └── docs/          # Word documents to convert
│       ├── sample.docx
│       └── ...
├── output/            # Your converted files go here
└── README.md
```

## How to Start

```
cd ~/Lessons/L8 && claude+
```

Copy this and paste in terminal!

## What to Say to Claude

> "Look at the PDF and DOCX files in the data folder. Convert them to Markdown first, then to HTML. Explain the conversion process and show me the results. Create a presentation about document processing!"

## What You Will Learn

- How to read and process PDF files
- How to read and process Word documents
- Markdown as an intermediate format
- HTML as the final web format
- Automated document pipelines

## Key Concepts

- **PDF**: Portable Document Format - good for reading, hard to edit
- **DOCX**: Microsoft Word format - contains formatted text
- **Markdown**: Simple text format - easy to convert to anything
- **Pipeline**: Data flows through steps: PDF → Markdown → HTML

## Available Sample Data

Check the `data/` folder for:
- Government reports with tables and statistics
- Sample business documents
- Mixed content PDFs (text + images)

---

**Time estimate:** ~10 minutes

**Difficulty:** Intermediate

**Next:** L9 for Spreadsheet Analytics!
