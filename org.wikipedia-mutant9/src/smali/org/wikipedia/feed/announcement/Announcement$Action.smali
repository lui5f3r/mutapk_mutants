.class public Lorg/wikipedia/feed/announcement/Announcement$Action;
.super Ljava/lang/Object;
.source "Announcement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/announcement/Announcement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private title:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lorg/wikipedia/feed/announcement/Announcement$Action;->title:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lorg/wikipedia/feed/announcement/Announcement$Action;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method title()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement$Action;->title:Ljava/lang/String;

    return-object v0
.end method

.method url()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/wikipedia/feed/announcement/Announcement$Action;->url:Ljava/lang/String;

    return-object v0
.end method
