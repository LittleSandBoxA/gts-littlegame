extends Node

#using System;
#using UnityEngine;
#using UnityEngine.Rendering;
enum huazhi_list {Simple,Good,Beautiful}
func change_huazhi(p_hua):
	match p_hua:
		huazhi_list.Simple:
			
			pass
		huazhi_list.Good:
			
			pass
		huazhi_list.Beautiful:
			
			pass
	pass
#namespace Assets.Scripts.PerformanceTuner
#{
#	// Token: 0x02000313 RID: 787
#	internal class Beautiful : IPerformanceProfile
#	{
#		// Token: 0x060013E9 RID: 5097 RVA: 0x000848C2 File Offset: 0x00082AC2
#		public Beautiful()
#		{
#			this.ShadowType = LightShadows.Soft;
#			this.ShadowResolution = LightShadowResolution.High;
#			this.ReflectionResolution = 512;
#			this.EnableHdr = true;
#			this.ShadowDistance = 80;
#		}
#
#		// Token: 0x17000318 RID: 792
#		// (get) Token: 0x060013EA RID: 5098 RVA: 0x000848F2 File Offset: 0x00082AF2
#		// (set) Token: 0x060013EB RID: 5099 RVA: 0x000848FA File Offset: 0x00082AFA
#		public LightShadows ShadowType { get; private set; }
#
#		// Token: 0x17000319 RID: 793
#		// (get) Token: 0x060013EC RID: 5100 RVA: 0x00084903 File Offset: 0x00082B03
#		// (set) Token: 0x060013ED RID: 5101 RVA: 0x0008490B File Offset: 0x00082B0B
#		public LightShadowResolution ShadowResolution { get; private set; }
#
#		// Token: 0x1700031A RID: 794
#		// (get) Token: 0x060013EE RID: 5102 RVA: 0x00084914 File Offset: 0x00082B14
#		// (set) Token: 0x060013EF RID: 5103 RVA: 0x0008491C File Offset: 0x00082B1C
#		public int ReflectionResolution { get; private set; }
#
#		// Token: 0x1700031B RID: 795
#		// (get) Token: 0x060013F0 RID: 5104 RVA: 0x00084925 File Offset: 0x00082B25
#		// (set) Token: 0x060013F1 RID: 5105 RVA: 0x0008492D File Offset: 0x00082B2D
#		public bool EnableHdr { get; private set; }
#
#		// Token: 0x1700031C RID: 796
#		// (get) Token: 0x060013F2 RID: 5106 RVA: 0x00084936 File Offset: 0x00082B36
#		// (set) Token: 0x060013F3 RID: 5107 RVA: 0x0008493E File Offset: 0x00082B3E
#		public int ShadowDistance { get; private set; }
#	}
#}
