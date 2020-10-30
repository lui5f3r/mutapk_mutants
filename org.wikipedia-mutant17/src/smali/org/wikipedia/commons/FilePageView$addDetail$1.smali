.class final Lorg/wikipedia/commons/FilePageView$addDetail$1;
.super Ljava/lang/Object;
.source "FilePageView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/commons/FilePageView;->addDetail(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $externalLink:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/commons/FilePageView;


# direct methods
.method constructor <init>(Lorg/wikipedia/commons/FilePageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/commons/FilePageView$addDetail$1;->this$0:Lorg/wikipedia/commons/FilePageView;

    iput-object p2, p0, Lorg/wikipedia/commons/FilePageView$addDetail$1;->$externalLink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lorg/wikipedia/commons/FilePageView$addDetail$1;->this$0:Lorg/wikipedia/commons/FilePageView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/commons/FilePageView$addDetail$1;->$externalLink:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
