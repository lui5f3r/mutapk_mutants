.class public Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;
.super Ljava/lang/Object;
.source "SiteInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/SiteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadingListsConfig"
.end annotation


# instance fields
.field private deletedRetentionDays:I

.field private maxEntriesPerList:I

.field private maxListsPerUser:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maxEntriesPerList()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/wikipedia/settings/SiteInfo$ReadingListsConfig;->maxEntriesPerList:I

    return v0
.end method
