from typing import Any

from django.contrib.gis.geos.geometry import GEOSGeometry as GEOSGeometry
from django.contrib.gis.geos.geometry import LinearGeometryMixin as LinearGeometryMixin

class LineString(LinearGeometryMixin, GEOSGeometry):
    has_cs: bool = ...
    def __init__(self, *args: Any, **kwargs: Any) -> None: ...
    def __iter__(self) -> Any: ...
    def __len__(self): ...
    @property
    def tuple(self): ...
    coords: Any = ...
    @property
    def array(self): ...
    @property
    def x(self): ...
    @property
    def y(self): ...
    @property
    def z(self): ...

class LinearRing(LineString):
    @property
    def is_counterclockwise(self): ...