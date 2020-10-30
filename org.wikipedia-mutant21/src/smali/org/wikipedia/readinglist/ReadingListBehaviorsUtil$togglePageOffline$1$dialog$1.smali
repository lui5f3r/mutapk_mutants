.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1$dialog$1;
.super Ljava/lang/Object;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1$dialog$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 210
    sget-object p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->INSTANCE:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;

    iget-object p2, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1$dialog$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;

    iget-object v0, p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$activity:Landroid/app/Activity;

    iget-object v1, p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    iget-object p2, p2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$togglePageOffline$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    invoke-virtual {p1, v0, v1, p2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->toggleOffline(Landroid/app/Activity;Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;)V

    return-void
.end method
