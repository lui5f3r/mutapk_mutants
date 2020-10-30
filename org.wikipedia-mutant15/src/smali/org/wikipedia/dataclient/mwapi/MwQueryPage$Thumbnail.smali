.class Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;
.super Ljava/lang/Object;
.source "MwQueryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Thumbnail"
.end annotation


# instance fields
.field private height:I

.field private source:Ljava/lang/String;

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method source()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Thumbnail;->source:Ljava/lang/String;

    return-object v0
.end method
