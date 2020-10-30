.class public Lorg/wikipedia/dataclient/page/PageLead$TitlePronunciation;
.super Ljava/lang/Object;
.source "PageLead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/page/PageLead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitlePronunciation"
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/PageLead$TitlePronunciation;->url:Ljava/lang/String;

    return-object v0
.end method
