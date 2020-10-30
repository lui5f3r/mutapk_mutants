.class public Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;
.super Ljava/lang/Object;
.source "MwQueryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Coordinates"
.end annotation


# instance fields
.field private lat:Ljava/lang/Double;

.field private lon:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lat()Ljava/lang/Double;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lat:Ljava/lang/Double;

    return-object v0
.end method

.method public lon()Ljava/lang/Double;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Coordinates;->lon:Ljava/lang/Double;

    return-object v0
.end method
