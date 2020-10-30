.class final Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$1;
.super Ljava/lang/Object;
.source "ReadingListBehaviorsUtil.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 243
    iget-object p1, p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;

    iget-object v0, p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$callback:Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;

    iget-object p1, p1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$addToDefaultList$1;->$defaultList:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {p1}, Lorg/wikipedia/readinglist/database/ReadingList;->id()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$AddToDefaultListCallback;->onMoveClicked(J)V

    return-void
.end method
