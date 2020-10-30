.class Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;
.super Ljava/lang/Object;
.source "PageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/page/PageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Thumbnail"
.end annotation


# instance fields
.field private source:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;->source:Ljava/lang/String;

    return-object v0
.end method
