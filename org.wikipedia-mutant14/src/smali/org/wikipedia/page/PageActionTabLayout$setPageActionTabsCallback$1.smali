.class final Lorg/wikipedia/page/PageActionTabLayout$setPageActionTabsCallback$1;
.super Ljava/lang/Object;
.source "PageActionTabLayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/PageActionTabLayout;->setPageActionTabsCallback(Lorg/wikipedia/page/action/PageActionTab$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $pageActionTabsCallback:Lorg/wikipedia/page/action/PageActionTab$Callback;

.field final synthetic $tabPosition:Ljava/lang/Integer;

.field final synthetic this$0:Lorg/wikipedia/page/PageActionTabLayout;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageActionTabLayout;Ljava/lang/Integer;Lorg/wikipedia/page/action/PageActionTab$Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/page/PageActionTabLayout$setPageActionTabsCallback$1;->this$0:Lorg/wikipedia/page/PageActionTabLayout;

    iput-object p2, p0, Lorg/wikipedia/page/PageActionTabLayout$setPageActionTabsCallback$1;->$tabPosition:Ljava/lang/Integer;

    iput-object p3, p0, Lorg/wikipedia/page/PageActionTabLayout$setPageActionTabsCallback$1;->$pageActionTabsCallback:Lorg/wikipedia/page/action/PageActionTab$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/wikipedia/page/PageActionTabLayout$setPageActionTabsCallback$1;->this$0:Lorg/wikipedia/page/PageActionTabLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/ConfigurableTabLayout;->isEnabled(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lorg/wikipedia/page/PageActionTabLayout$setPageActionTabsCallback$1;->$tabPosition:Ljava/lang/Integer;

    const-string v0, "tabPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/wikipedia/page/action/PageActionTab;->of(I)Lorg/wikipedia/page/action/PageActionTab;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/page/PageActionTabLayout$setPageActionTabsCallback$1;->$pageActionTabsCallback:Lorg/wikipedia/page/action/PageActionTab$Callback;

    invoke-virtual {p1, v0}, Lorg/wikipedia/page/action/PageActionTab;->select(Lorg/wikipedia/page/action/PageActionTab$Callback;)V

    :cond_0
    return-void
.end method
