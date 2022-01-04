#!/bin/bash
git commit && git push
git commit || echo "Commit failed!"