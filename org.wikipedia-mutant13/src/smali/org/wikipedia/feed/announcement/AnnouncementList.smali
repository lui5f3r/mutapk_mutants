.class public Lorg/wikipedia/feed/announcement/AnnouncementList;
.super Lorg/wikipedia/model/BaseModel;
.source "AnnouncementList.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announce"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/announcement/Announcement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementList;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public items()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/announcement/Announcement;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/AnnouncementList;->items:Ljava/util/List;

    return-object v0
.end method
