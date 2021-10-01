from typing import ContextManager, Generator, Iterable, Tuple

FORCED_WIDTH: int | None

def measure_table(rows: Iterable[Iterable[str]]) -> Tuple[int, ...]: ...
def iter_rows(rows: Iterable[Iterable[str]], col_count: int) -> Generator[Tuple[str, ...], None, None]: ...
def wrap_text(
    text: str, width: int = ..., initial_indent: str = ..., subsequent_indent: str = ..., preserve_paragraphs: bool = ...
) -> str: ...

class HelpFormatter:
    indent_increment: int
    width: int | None
    current_indent: int
    buffer: list[str]
    def __init__(self, indent_increment: int = ..., width: int | None = ..., max_width: int | None = ...) -> None: ...
    def write(self, string: str) -> None: ...
    def indent(self) -> None: ...
    def dedent(self) -> None: ...
    def write_usage(self, prog: str, args: str = ..., prefix: str = ...) -> None: ...
    def write_heading(self, heading: str) -> None: ...
    def write_paragraph(self) -> None: ...
    def write_text(self, text: str) -> None: ...
    def write_dl(self, rows: Iterable[Iterable[str]], col_max: int = ..., col_spacing: int = ...) -> None: ...
    def section(self, name: str) -> ContextManager[None]: ...
    def indentation(self) -> ContextManager[None]: ...
    def getvalue(self) -> str: ...

def join_options(options: list[str]) -> Tuple[str, bool]: ...