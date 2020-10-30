.class final Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;
.super Ljava/lang/Object;
.source "ThemeChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/theme/ThemeChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FontSizeButtonListener"
.end annotation


# instance fields
.field private action:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

.field final synthetic this$0:Lorg/wikipedia/theme/ThemeChooserDialog;


# direct methods
.method private constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p2, p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;->action:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 285
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    move-result p1

    .line 286
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;->action:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    sget-object v1, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->INCREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {v0}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$200(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->setFontSizeMultiplier(I)Z

    move-result v2

    goto :goto_0

    .line 288
    :cond_0
    sget-object v1, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->DECREASE:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    if-ne v0, v1, :cond_1

    .line 289
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {v0}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$200(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/wikipedia/WikipediaApp;->setFontSizeMultiplier(I)Z

    move-result v2

    goto :goto_0

    .line 290
    :cond_1
    sget-object v1, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;->RESET:Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeAction;

    if-ne v0, v1, :cond_2

    .line 291
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {v0}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$200(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/wikipedia/WikipediaApp;->setFontSizeMultiplier(I)Z

    move-result v2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 294
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {v0, v3}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$302(Lorg/wikipedia/theme/ThemeChooserDialog;Z)Z

    .line 295
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {v0}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$400(Lorg/wikipedia/theme/ThemeChooserDialog;)V

    .line 296
    iget-object v0, p0, Lorg/wikipedia/theme/ThemeChooserDialog$FontSizeButtonListener;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {v0}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$500(Lorg/wikipedia/theme/ThemeChooserDialog;)Lorg/wikipedia/analytics/AppearanceChangeFunnel;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getTextSizeMultiplier()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lorg/wikipedia/analytics/AppearanceChangeFunnel;->logFontSizeChange(FF)V

    :cond_3
    return-void
.end method
