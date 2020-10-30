.class public Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot;
.super Ljava/lang/Object;
.source "MwQueryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevisionSlot"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private contentformat:Ljava/lang/String;

.field private contentmodel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$RevisionSlot;->content:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
