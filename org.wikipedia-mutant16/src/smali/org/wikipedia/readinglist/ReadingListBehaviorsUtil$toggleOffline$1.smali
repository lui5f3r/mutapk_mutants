.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$toggleOffline$1;
.super Ljava/lang/Object;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->toggleOffline(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

.field final synthetic $page:Lorg/wikipedia/readinglist/database/ReadingListPage;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$toggleOffline$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$toggleOffline$1;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$toggleOffline$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 227
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$toggleOffline$1;->$activity:Landroid/app/Activity;

    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$toggleOffline$1;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->access$toggleOffline(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Z)V

    .line 228
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$toggleOffline$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-interface {p1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    return-void
.end method
