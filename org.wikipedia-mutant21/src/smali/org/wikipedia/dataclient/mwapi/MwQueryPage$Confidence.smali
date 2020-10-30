.class public Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Confidence;
.super Ljava/lang/Object;
.source "MwQueryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Confidence"
.end annotation


# instance fields
.field private google:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoogle()F
    .locals 1

    .line 326
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Confidence;->google:F

    return v0
.end method
